-- ##########################################################################
-- PROJECT      : Customer Behavior Analysis
-- FILE         : 01_create_database.sql
-- AUTHOR       : Onkar Jadhav
-- DESCRIPTION  : Create Database
-- ##########################################################################

-- ==========================================================
-- Drop Existing Database (Optional)
-- ==========================================================

DROP DATABASE IF EXISTS customer_behavior_analysis;

-- ==========================================================
-- Create Database
-- ==========================================================

CREATE DATABASE customer_behavior_analysis;

-- ==========================================================
-- Use Database
-- ==========================================================

USE customer_behavior_analysis;

-- ==========================================================
-- Verify
-- ==========================================================

SELECT DATABASE() AS current_database;