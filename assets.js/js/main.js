// Mobile menu toggle with animation
document.querySelector('.menu-btn').addEventListener('click', () => {
    const nav = document.querySelector('nav');
    nav.classList.toggle('active');
    
    // Toggle button animation
    this.classList.toggle('open');
  });
  // Form validation feedback
  document.querySelector('form').addEventListener('submit', (e) => {
    const email = document.getElementById('email').value;
    if (!email.includes('@')) {
      e.preventDefault();
      alert('Please enter a valid email!');
    }
  });

  