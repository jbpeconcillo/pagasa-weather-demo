SHELL := /bin/bash

## testcommand:
.PHONY: testcommand
testcommand:
	@echo "This is a test command beh."

## frontend build:
.PHONY: frontend-build
frontend-build:
	cd frontend && npm install && npm run build

## backend build:
.PHONY: backend-dev
backend-dev:
	@echo "Starting backend automatic development server..."
	cd backend && source .venv/bin/activate && uvicorn app.main:app --reload

## frontend-dev:
.PHONY: frontend-dev
frontend-dev:
	@echo "Starting frontend automatic development server..."
	cd frontend && npm install && npm run dev