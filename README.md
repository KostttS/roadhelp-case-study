# RoadHelp — Roadside Assistance Mobile App

Mobile app for roadside assistance services with two user roles: clients and service providers.

The app allows a client to choose a service, find available nearby masters, and contact or order help. Service providers can manage their availability, services, location and payment status.

---

## My role

End-to-end mobile app development:

- app structure and user flows
- database structure
- Supabase integration
- client and master roles
- geolocation logic
- service search by distance
- payment flow
- custom FlutterFlow actions
- production logic and testing

---

## Tech stack

- FlutterFlow
- Supabase
- PostgreSQL
- SQL
- Supabase Auth
- Geolocation
- JSON data structure
- Custom Actions / Custom Functions
- REST API logic
- Payment integration
- Mobile app production support

---

## Main features

### Client side

- client registration and profile
- service category selection
- list of available masters
- sorting masters by distance
- display of master status: available / busy
- service request flow
- simple user interface without complex maps

### Master side

- master registration and profile
- service management
- price setup
- availability status
- location update
- payment status logic
- visibility in search results only when active

### Backend logic

- separate data for clients and masters
- services linked to master profiles
- latitude and longitude storage
- JSON field with service and master data
- distance calculation from client location
- filtering and sorting service providers
- Supabase-based backend structure

---

## Technical challenges

### Distance-based search

The app needed to show the closest available masters to the client.

I implemented custom logic that takes the client location, reads the service provider list, calculates distance, adds distance values to the result list, and sorts providers from nearest to farthest.

### FlutterFlow + Supabase structure

The project required a clear Supabase data structure that works well with FlutterFlow limitations.

I used PostgreSQL tables, SQL logic, JSON fields and FlutterFlow custom actions to keep the app logic practical and maintainable.

### Real-time service availability

Masters can change their availability status. The app uses this status to decide whether a provider should appear in the client search results.

---

## Result

The project was built as a working mobile application with:

- client and master roles
- Supabase backend
- service provider search
- distance-based sorting
- location updates
- payment logic
- production-ready app flows

---

## Project type

Commercial mobile app / service marketplace / roadside assistance platform.
