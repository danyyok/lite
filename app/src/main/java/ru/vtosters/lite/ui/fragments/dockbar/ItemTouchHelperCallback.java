package ru.vtosters.lite.ui.fragments.dockbar;

import static androidx.recyclerview.widget.ItemTouchHelper.Callback.makeMovementFlags;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.a.ItemTouchHelper;

public class ItemTouchHelperCallback extends ItemTouchHelper.a {

    private DockBarAdapter mAdapter;

    public ItemTouchHelperCallback(DockBarAdapter mAdapter) {
        this.mAdapter = mAdapter;
    }

    @Override // isItemViewSwipeEnabled
    public boolean a() {
        return true;
    }

    @Override // isLongPressDragEnabled
    public boolean b() {
        return true;
    }

    @Override
    public int a(RecyclerView recyclerView, RecyclerView.x viewHolder) {
        int pos = mAdapter.getItemType(viewHolder.d());
        int dragFlags = pos != androidx.recyclerview.widget.RecyclerView.INVALID_TYPE ? androidx.recyclerview.widget.ItemTouchHelper.UP | androidx.recyclerview.widget.ItemTouchHelper.DOWN : 0;
        int swipeFlags = pos == 1 ? androidx.recyclerview.widget.ItemTouchHelper.START | androidx.recyclerview.widget.ItemTouchHelper.END : 0;
        return makeMovementFlags(dragFlags, swipeFlags);
    }

    @Override
    public void a(RecyclerView.x viewHolder, int direction) {
        mAdapter.onItemDismiss(viewHolder.d());
    }

    @Override
    public boolean b(RecyclerView recyclerView, RecyclerView.x viewHolder, RecyclerView.x target) {
        if (mAdapter.getItemType(viewHolder.d()) == androidx.recyclerview.widget.RecyclerView.INVALID_TYPE)
            return false;
        return mAdapter.onItemMove(viewHolder.d(), target.d());
    }
}
