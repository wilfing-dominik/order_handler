package com.example.order_handler

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TableLayout

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        var asztal1 = findViewById<Button>(R.id.table1)
        var table = findViewById<TableLayout>(R.id.tables)
    }
}