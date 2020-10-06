package ${packageName}

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContentProviderCompat.requireContext
import androidx.recyclerview.widget.DefaultItemAnimator
import androidx.recyclerview.widget.LinearLayoutManager
import kotlinx.android.synthetic.main.${mainActivityLayout}.*

class ${mainActivityClass}: AppCompatActivity(){

    private lateinit var mAdapter: ${itemAdapterClass}

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${mainActivityLayout})
        setupAdapter()
        swipe.setOnRefreshListener { createDummyData() }
    }

  private fun setupAdapter() {
      mAdapter = ${itemAdapterClass}()
      recycler.apply {
          adapter = mAdapter
          itemAnimator = DefaultItemAnimator()
          layoutManager = LinearLayoutManager(this@${mainActivityClass})
      }
  }

  override fun onStart() {
      super.onStart()
      createDummyData()
  }

  fun createDummyData() {
      val data: ArrayList<${adapterModelClass}> = ArrayList()
      for (i in 0 until 10) {
          data.add(${adapterModelClass}("Title $i", "This is going to be $i long message out of 10"))
      }
      mAdapter.setRecyclerData(data)
      swipe.isRefreshing = false
  }
}
