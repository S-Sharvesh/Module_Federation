import { Component, OnInit } from '@angular/core';
import { Router, NavigationEnd } from '@angular/router';
import { filter } from 'rxjs/operators';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent implements OnInit {
  title = 'shell';
  currentRoute = 'home';
  isLoading = false;
  lastLoadTime: number | null = null;
  currentLoadTime = 0;
  navigationCount = 0;

  private loadStartTime = 0;
  private loadInterval: any;

  constructor(private router: Router) {}

  ngOnInit() {
    // Track route changes
    this.router.events
      .pipe(filter((event) => event instanceof NavigationEnd))
      .subscribe((event) => {
        this.updateCurrentRoute((event as NavigationEnd).url);
      });

    // Initialize with current route
    this.updateCurrentRoute(this.router.url);
  }

  navigateToHome() {
    this.startLoadTimer();
    this.currentRoute = 'home';
    this.router.navigate(['/']).then(() => {
      this.stopLoadTimer();
    });
    this.navigationCount++;
  }

  navigateToMfe1() {
    this.startLoadTimer();
    this.currentRoute = 'mfe1';
    this.router.navigate(['/mfe1']).then(() => {
      // Add a small delay to simulate micro-frontend loading
      setTimeout(() => {
        this.stopLoadTimer();
      }, 100);
    });
    this.navigationCount++;
  }

  private updateCurrentRoute(url: string) {
    if (url === '/' || url === '') {
      this.currentRoute = 'home';
    } else if (url.includes('mfe1')) {
      this.currentRoute = 'mfe1';
    }
  }

  private startLoadTimer() {
    this.isLoading = true;
    this.loadStartTime = performance.now();
    this.currentLoadTime = 0;

    // Update load time in real-time
    this.loadInterval = setInterval(() => {
      this.currentLoadTime = Math.round(performance.now() - this.loadStartTime);
    }, 10);
  }

  private stopLoadTimer() {
    this.isLoading = false;
    if (this.loadInterval) {
      clearInterval(this.loadInterval);
    }
    this.lastLoadTime = Math.round(performance.now() - this.loadStartTime);
  }

  getPerformanceClass(): string {
    if (!this.lastLoadTime) return 'unknown';
    if (this.lastLoadTime < 100) return 'excellent';
    if (this.lastLoadTime < 300) return 'good';
    if (this.lastLoadTime < 1000) return 'fair';
    return 'poor';
  }

  getPerformanceText(): string {
    if (!this.lastLoadTime) return 'Unknown';
    if (this.lastLoadTime < 100) return 'Excellent';
    if (this.lastLoadTime < 300) return 'Good';
    if (this.lastLoadTime < 1000) return 'Fair';
    return 'Needs Improvement';
  }
}
