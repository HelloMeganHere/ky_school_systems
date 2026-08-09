#functions
import pandas as pd
import matplotlib.pyplot as plt
import sqlite3
import seaborn as sns
import matplotlib.ticker as mticker


def csv_append(file_paths):
    appended_dataframes = [
    pd.read_csv(file, dtype={'NCES ID': 'string'}, na_values=['NaN'])
    for file in file_paths]
    return pd.concat(appended_dataframes, ignore_index=True)

#### Functions
def asterisk_conversion(df, column_name):
    asterisk_convert_df = df.copy()
    asterisk_convert_df[column_name] = asterisk_convert_df[column_name].replace('*', pd.NA)
    asterisk_convert_df[column_name] = pd.to_numeric(asterisk_convert_df[column_name],  errors='coerce')
    return asterisk_convert_df


def school_year_conversion(df, column_name):
    school_year_df = df.copy()
    school_year_df[column_name] = school_year_df[column_name].replace(
        {20232024: '2023 - 2024', 
         20242025: '2024 - 2025'})
    return school_year_df