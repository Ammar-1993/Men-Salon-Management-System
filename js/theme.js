document.addEventListener('DOMContentLoaded', () => {
    const toggleButton = document.getElementById('theme-toggle');
    const body = document.body;
    const currentTheme = localStorage.getItem('theme');

    // Apply saved theme on load
    if (currentTheme === 'dark') {
        body.classList.add('dark-mode');
        if (toggleButton) {
             toggleButton.innerHTML = '<i class="fa fa-sun-o"></i>'; // Icon for Light Mode
        }
    }

    if (toggleButton) {
        toggleButton.addEventListener('click', (e) => {
            e.preventDefault();
            body.classList.toggle('dark-mode');
            
            const isDarkMode = body.classList.contains('dark-mode');
            localStorage.setItem('theme', isDarkMode ? 'dark' : 'light');
            
            // Update icon
            if (isDarkMode) {
                toggleButton.innerHTML = '<i class="fa fa-sun-o"></i>';
            } else {
                toggleButton.innerHTML = '<i class="fa fa-moon-o"></i>';
            }
        });
    }
});
