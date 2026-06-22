# BestMeds

BestMeds is a full-stack medicine and wellness e-commerce application. Customers can browse products, manage a cart and delivery address, and place orders. Administrators can manage the catalogue, promotions, and orders.

## Tech stack

- Frontend: React 17, React Router, Redux, Material UI
- Backend: Node.js, Express, MySQL
- Payments: Razorpay checkout UI is present but **not yet integrated securely**. Do not enable online payments until the backend creates Razorpay orders and verifies payment signatures.

## Setup

1. Clone the repository.
2. Import `database.sql` into a MySQL database named `bestmeds`.
3. Copy `backend/.env.example` to `backend/.env` and set the MySQL values.
4. Copy `frontend/.env.example` to `frontend/.env` if you are working on the unfinished Razorpay integration.
5. In one terminal, run `cd backend && npm install && npm start`.
6. In another terminal, run `cd frontend && npm install && npm start`.

The backend listens on `http://localhost:5002`. Create React App uses `http://localhost:3000` by default.

## Seed accounts

The SQL seed contains bcrypt password hashes only. The sample hashes are for the password `password`; change or remove these accounts before any production deployment.

## Security notes

- Never commit `.env` files; use the committed `.env.example` files as templates.
- Set strong, unique database credentials locally and in deployment secrets.
- Implement server-side Razorpay order creation and signature verification before accepting online payments.
