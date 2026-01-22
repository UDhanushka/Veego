
(function() {
    const adsTable = document.getElementById('ads-table');
    const adsRows = Array.from(adsTable.tBodies[0].rows);
    // Map to hold total views per ad ID for active ads only
    const activeAdsViews = new Map();
   
    adsRows.forEach(row => {
      const idCell = row.cells[0].textContent.trim();
      const statusCell = row.cells[4].textContent.trim().toLowerCase();
      const viewsCell = row.cells[5].textContent.trim().replace(/,/g, '');
      const views = parseInt(viewsCell, 10) || 0;
   
      // Only count active ads
      if (statusCell === 'active') {
        if (activeAdsViews.has(idCell)) {
          activeAdsViews.set(idCell, activeAdsViews.get(idCell) + views);
        } else {
          activeAdsViews.set(idCell, views);
        }
      }
    });
   
    // Convert map to array and sort descending by views
    const sortedAds = Array.from(activeAdsViews.entries()).sort((a,b) => b[1] - a[1]);
   
    // For demo, add some placeholders for other ads (non-active or less viewed)
    const placeholders = [
      {id: '1', views: 400},
      {id: '2', views: 1240}
    ];
   
    // Combine active ads and placeholders
    //const allAds = [...sortedAds.map(([id, views]) => ({id, views, active: true})), ...placeholders.map(p => ({...p, active: false}))];
	const allAds = [].concat(
	  sortedAds.map(([id, views]) => ({ id: id, views: views, active: true })),
	  placeholders.map(p => ({ id: p.id, views: p.views, active: false }))
	);

    // Find max views for scaling
    const maxViews = Math.max(...allAds.map(ad => ad.views));
   
    // Generate bars
    const chart = document.getElementById('analytics-chart');
    chart.innerHTML = '';
   
    allAds.forEach(ad => {
      const barWrapper = document.createElement('div');
      barWrapper.className = 'bar-wrapper';
   
      const bar = document.createElement('div');
      bar.className = 'bar';
      if (!ad.active) {
        bar.style.backgroundColor = '#60a5fa'; // lighter blue for placeholders
      }
      // Calculate height relative to maxViews, max height 120px
      const height = (ad.views / maxViews) * 120;
      bar.style.height = height + 'px';
      //bar.title = `Ad ${ad.id} - ${ad.views.toLocaleString()} views`;
	  bar.title = 'Ad ' + ad.id + ' - ' + ad.views.toLocaleString() + ' views';

   
      const span = document.createElement('span');
      span.textContent = ad.views.toLocaleString();
   
      bar.appendChild(span);
   
      const label = document.createElement('div');
      label.className = 'bar-label';
      label.textContent = ad.id;
   
      barWrapper.appendChild(bar);
      barWrapper.appendChild(label);
   
      chart.appendChild(barWrapper);
    });
   })();