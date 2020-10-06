package ${packageName}

import androidx.recyclerview.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import kotlinx.android.synthetic.main.${itemLayout}.view.*

class ${itemAdapterClass} : RecyclerView.Adapter<${itemAdapterClass}.ViewHolder>() {

    private val items: ArrayList<${adapterModelClass}> = ArrayList()

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        return ViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.${itemLayout}, parent, false))
    }

    override fun getItemCount(): Int {
        return items.size
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(items[position])
    }

    fun setRecyclerData(data: List<${adapterModelClass}>) {
        items.clear()
        items.addAll(data)
        notifyDataSetChanged()
    }

    class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        fun bind(dataModel: ${adapterModelClass}) {
          itemView.tv_title.text = dataModel.title
          itemView.tv_msg.text = dataModel.message
        }
    }
}
