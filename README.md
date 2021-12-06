
Unit 8: Group Milestone - README 
===

# VibeCentral

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)

## Overview
### Description
Music for your ears, amazing tunes that will get you hooked. This app can be used anywhere to listen your favorite songs.
### App Evaluation

- **Category:** Music

- **Mobile:** This app would be primarily created and used on mobile devices and computers, such as spotify or other similar music apps. Functionality wouldn't be limited to mobile devices, however the mobile version of this app would have more added options.

- **Story:** Analyzes users music options, and connects them to music of that genre. The user will then get that music genre recommended to them more.

- **Market:** Using this app would be free of charge for all users.

- **Habit:** This app could be used anytime, anywhere. With amazing music at your hands, the individual would enjoy himself.

- **Scope:** First we would start with finding all hit songs from the past six decades, then we will find all modern day streaming hit music. 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User logs in to access their customized profile

* User picks what their favorite artist/genre/etc. (Think Spotify interface)
* They would be matched with their favprite genre of music.
* Profile pages for each user
* Settings (Accesibility, Notification, General, etc.)


### 2. Screen Archetypes

* Login 
* Register - User signs up or logs into their account
   * Upon Download/Reopening of the application, the user is prompted to log in to gain access to their profile information to see their customized music favorites and current streaming songs.
   * ...
* Profile Screen 
   * Allows user to upload a photo and fill in information that is interesting to them and others
* Song Selection Screen.
   * Allows user to be able to choose their desired song, artist, genre of preference and begin listening and interacting with others.
* Settings Screen
   * Lets people change language, and app notification settings.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Music selection
* Profile
* Settings

Optional:
* Music/Encounter Queue
* Discover (Top Choices)

**Flow Navigation** (Screen to Screen)
* Forced Log-in -> Account creation if no log in is available
* Music Selection (Or Queue if Optional) -> Jumps to Chat
* Profile -> Text field to be modified. 
* Settings -> Toggle settings

## Wireframes

![20211031_234800](https://user-images.githubusercontent.com/76667866/139619285-1167d3cd-d672-4b59-9437-d2f5f856d6fd.jpg)

# Unit 9 - Schema Design & Sprint Planning

## Schema
### Models
#### Post
| Property | Type | Description |
| ------------- | -------- | ------------|
| objectID | String | unique id for the user |
| author | Pointer to User| image author |
| image | File | image of artist album |
| caption | String | image caption by author |
### Networking
#### List of network requests
- Home Feed
- (Read/GET) Network spotify API ID
```
swift
let SpotifyClientID = "7beed79fd94c4a50af531571320e32c8"
let SpotifyRedirectURL = URL(string: "spotify-ios-quick-start://spotify-login-callback")!
lazy var configuration = SPTConfiguration(
clientID: SpotifyClientID,
redirectURL: SpotifyRedirectURL

)
```
- (Read/GET) Get current users profile
- (Update/PUT) Follow Playlist
- (Delete) Unfollow Playlist
- (Delete) Unfollow Artists or Users
- Search screen
- (Read/GET) Search for song or artist
- Profile Screen
- (Read/GET) Query logged in user object
- (Update/PUT) Update user profile image
- Music Player screen
- (Update/PUT) Start/Resume Playback
- (Update/PUT) Pause Playback


 # Unit 10: Group Milestone 1

![ezgif com-gif-maker](https://user-images.githubusercontent.com/76667866/141724876-abfa9b4b-ff8b-4521-ab86-f648bbc202e5.gif)

- [x] Configure Spotify Api
- [x] User can login

# Unit 11: Group Milestone 2

- [x] storyboard tabs
- [x] navigation controller's etc

# Unit 12: Group Milestone 3

- [x] Home page
- [x] Search Music

# Unit 13: Group Milestone 4

- [x] Introduction
- [x] Team Finish
- [x] Api Complete
- [x] Streaming
- [x] Playlist
- [x] All tabs

![Gif_2](https://user-images.githubusercontent.com/76667866/144826245-a71cb196-63a2-4df7-9520-245cceaffaea.gif)

![Gif_1](https://user-images.githubusercontent.com/76667866/144788293-4f542d41-1176-436d-9285-a45caf5b507f.gif)

![Gif_3](https://user-images.githubusercontent.com/76667866/144826341-e143d20e-8169-4a2c-8639-ae58e49a6518.gif)







