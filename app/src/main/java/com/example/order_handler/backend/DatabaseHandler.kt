package com.example.order_handler.backend
import android.annotation.SuppressLint
import android.content.ContentValues
import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteOpenHelper

val DATABASE_NAME = "db.sqlite3"

//VALUES FOR THE SQL TABLE NAMED "tables"
val TABLES = "tables"
val COL_TABLE_ID = "id"
val COL_STATE = "state"
val COL_PRICE = "price"

//VALUES FOR THE SQL TABLE NAMED "inventory"
val INVENTORY = "inventory"
val COL_INVENTORY_ID = "id"
val COL_INVENTORY_NAME = "name"
val COL_INVENTORY_PRICE_HUF = "price_huf"
val COL_INVENTORY_PRICE_EUR = "price_eur"

//VALUES FOR THE SQL TABLE NAMED "orders"
val ORDERS = "orders"
val COL_ORDER_ID = "id"
val COL_ORDER_STATE = "state"
val COL_ORDER_PRICE = "price"

class DatabaseHandler(context: Context) : SQLiteOpenHelper(context, DATABASE_NAME, null, 1)  {
    override fun onCreate(db: SQLiteDatabase?) {  //not sure what to do with these two yet
        TODO("Not yet implemented")
    }

    override fun onUpgrade(db: SQLiteDatabase?, oldVersion: Int, newVersion: Int) {
        TODO("Not yet implemented")
    }

    //UNTESTED
    fun insertOrder (id : String, state : String, price : String): Long {
        val db = this.writableDatabase
        var cv = ContentValues()

        cv.put(COL_TABLE_ID, id)
        cv.put(COL_STATE, state)
        cv.put(COL_PRICE, price)

        var result = db.insert(TABLES, null, cv)
        db.close()
        return result
    }

    @SuppressLint("Range") // if this is not here, the cursor signals error, further testing needed
    fun getAllOrder(): ArrayList<String > { // UNTESTED, also, not ready, just returns a bunch of strings from the database, for testing purposes
        val stdList: ArrayList<String> = ArrayList()
        val selectQuery = "SELECT * FROM $TABLES"
        val db = this.readableDatabase

        val cursor: Cursor?

        try {
            cursor = db.rawQuery(selectQuery, null)
        }
        catch (e: Exception) {
            e.printStackTrace()
            db.execSQL(selectQuery)
            return ArrayList()
        }

        var id: Int
        var state: String
        var price: Int

        if (cursor.moveToFirst()) {
            do {
                id = cursor.getInt(cursor.getColumnIndex("id"))
                state = cursor.getString(cursor.getColumnIndex("state"))
                price = cursor.getInt(cursor.getColumnIndex("price"))
                stdList.add(id.toString())
                stdList.add(state)
                stdList.add(price.toString())
            }while (cursor.moveToNext())
        }
        return stdList
    }
}
