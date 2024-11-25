document.querySelectorAll('.download-links a').forEach(link => {
    link.addEventListener('click', (event) => {
        console.log(`Download initiated: ${event.target.textContent}`);
        alert(`Thanks for downloading AlphaShell!`);
    });
});
