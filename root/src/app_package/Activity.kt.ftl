package ${packageName}

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.design.widget.TabLayout
import android.support.v4.view.ViewPager
import kotlinx.android.synthetic.main.${layoutName}.*

class ${activityClass} : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})

        setTabLayout(view_pager, tab_layout, 2)
    }

    private fun setTabLayout(viewPager: ViewPager, tabLayout: TabLayout, numTab: Int) {
        tabLayout.setupWithViewPager(viewPager, true)
        val adapter = ViewPagerAdapter(supportFragmentManager)
        for (i in 0 until numTab){
            val fragmentTab = ${fragmentClass}()
            fragmentTab.setTabName("Tab")
            adapter.addFragment(fragmentTab, "Tab")
        }
        viewPager.adapter = adapter
    }
}