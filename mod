let isInvisible = false;
let isFlying = false;
let isSpeedBoosted = false;
let isWallRunning = false;

// Mod Menu UI (basic example, could be customized more)
const modMenu = document.createElement('div');
modMenu.style.position = 'absolute';
modMenu.style.top = '20px';
modMenu.style.left = '20px';
modMenu.style.backgroundColor = 'rgba(0, 0, 0, 0.7)';
modMenu.style.color = 'white';
modMenu.style.padding = '10px';
modMenu.style.borderRadius = '10px';
modMenu.style.fontFamily = 'Arial, sans-serif';

// Menu title
const title = document.createElement('h3');
title.textContent = 'Gorilla Tag Mod Menu';
modMenu.appendChild(title);

// Invisible Mod Toggle
const invisibleToggle = document.createElement('button');
invisibleToggle.textContent = 'Toggle Invisible';
invisibleToggle.onclick = () => {
    isInvisible = !isInvisible;
    updateModState();
};
modMenu.appendChild(invisibleToggle);

// Fly Mod Toggle
const flyToggle = document.createElement('button');
flyToggle.textContent = 'Toggle Fly';
flyToggle.onclick = () => {
    isFlying = !isFlying;
    updateModState();
};
modMenu.appendChild(flyToggle);

// Speed Boost Toggle
const speedBoostToggle = document.createElement('button');
speedBoostToggle.textContent = 'Toggle Speed Boost';
speedBoostToggle.onclick = () => {
    isSpeedBoosted = !isSpeedBoosted;
    updateModState();
};
modMenu.appendChild(speedBoostToggle);

// Wall Run Toggle
const wallRunToggle = document.createElement('button');
wallRunToggle.textContent = 'Toggle Wall Run';
wallRunToggle.onclick = () => {
    isWallRunning = !isWallRunning;
    updateModState();
};
modMenu.appendChild(wallRunToggle);

// Update Mod States
function updateModState() {
    // Hypothetical functions to change the player's state (these would be game-specific)
    if (isInvisible) {
        // Make the player invisible
        console.log('Player is invisible');
    } else {
        // Make the player visible
        console.log('Player is visible');
    }

    if (isFlying) {
        // Enable flying
        console.log('Flying enabled');
    } else {
        // Disable flying
        console.log('Flying disabled');
    }

    if (isSpeedBoosted) {
        // Apply speed boost
        console.log('Speed boosted');
    } else {
        // Normal speed
        console.log('Speed normal');
    }

    if (isWallRunning) {
        // Enable wall run
        console.log('Wall running enabled');
    } else {
        // Disable wall run
        console.log('Wall running disabled');
    }
}

// Append menu to body
document.body.appendChild(modMenu);

// Optionally, close the mod menu
const closeButton = document.createElement('button');
closeButton.textContent = 'Close Menu';
closeButton.onclick = () => {
    document.body.removeChild(modMenu);
};
modMenu.appendChild(closeButton);
