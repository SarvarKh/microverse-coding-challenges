
// Pseudo code | Strategy

// 1. Make an array of pages;
// 2. Count number of pages from the front to arrive to the page;
// 3. Count number of pages from back to arrive to the page;
// 4. If countFront > countBack => return countBack;
//  else return countFront;


function pageCount(n, p) {
  // 1. Make an array of pages;
  let pagesArr = [];
  for (let i = 0; i <= n; i++) {
    pagesArr.push(i);
  }

  let bookPages = [];
  for (let j = 1; j <= pagesArr.length; j++) {
    bookPages.push(pagesArr.splice(0, 2));
    if(pagesArr.length === 1) {
      bookPages.push(pagesArr.splice(0));
    }
  }
  
}

pageCount(6, 2);