CREATE TABLE decisions (
    id INTEGER PRIMARY KEY,
    asset_type TEXT,
    decision_date DATE,
    context TEXT,
    risk_level REAL,
    expected_return REAL,
    actual_return REAL,
    outcome TEXT,
    duration_days INTEGER
);
