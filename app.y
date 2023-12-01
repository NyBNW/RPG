import streamlit as st
import time

# Set the size of the game canvas
canvas_width = 500
canvas_height = 300

# Set the position of the player
player_x = 50
player_y = canvas_height // 2

# Set the speed of the player
player_speed = 5

# Set the speed of scrolling
scroll_speed = 2

# Create a canvas to draw the game
canvas = st.empty()

while True:
    # Update the player position based on user input
    if st.button('↑'):
        player_y -= player_speed
    if st.button('↓'):
        player_y += player_speed

    # Clear the canvas
    canvas.clear()

    # Draw the player
    canvas.add_shape(
        type='circle',
        cx=player_x,
        cy=player_y,
        r=10,
        line_color='blue',
        fill_color='blue'
    )

    # Draw the scrolling background
    canvas.add_shape(
        type='rect',
        x=0,
        y=0,
        width=canvas_width,
        height=canvas_height,
        line_color='black',
        fill_color='white'
    )

    # Scroll the background
    player_x += scroll_speed

    # Update the canvas
    time.sleep(0.03)
