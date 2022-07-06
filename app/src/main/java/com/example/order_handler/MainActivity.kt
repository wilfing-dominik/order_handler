package com.example.order_handler

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.LinearLayout
import android.widget.TableLayout

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        //var asztal1 = findViewById<Button>(R.id.table1)
        //var table = findViewById<TableLayout>(R.id.tables)
    }

    fun openTablePage() {
        //itt le kellene kerni h melyikgomb lett megnyomva

        var tables = findViewById<LinearLayout>(R.id.tables);
        if (tables != null)
        {
            for (i in 0..9) //itt a kilences egy magic number, helyette le kellene kerni h hany button van összesen
            {
                //megkeresi az ennek megfelelő asztalt
            }
        }
    }
}