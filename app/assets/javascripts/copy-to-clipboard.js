
// Original Source :https://codepen.io/chriscoyier/pen/OXAwvq?editors=1010
var copyEmailBtn = document.querySelector('.u-email-copy-btn');  
copyEmailBtn.addEventListener('click', function(event) {  

  // Stop the mailto: from opening a mail client with JS enabled
  event.preventDefault()

  // Select the email link anchor text  
  var emailLink = document.querySelector('.u-email-copy-address');  
  var range = document.createRange();  
  range.selectNode(emailLink);  
  window.getSelection().addRange(range);  

  document.querySelector('.u-email-copy-btn').classList.add('u-email-copy-btn--copied');

  try {  
    // Now that we've selected the anchor text, execute the copy command  
    var successful = document.execCommand('copy');  
    var msg = successful ? 'successful' : 'unsuccessful';  
    console.log('Copy email command was ' + msg);  
  } catch(err) {  
    console.log('Oops, unable to copy');  
  }  

  // Remove the selections - NOTE: Should use
  // removeRange(range) when it is supported  
  window.getSelection().removeAllRanges();  
});