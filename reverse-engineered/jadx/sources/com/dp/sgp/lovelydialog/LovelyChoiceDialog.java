package com.dp.sgp.lovelydialog;

import android.content.Context;
import android.os.Bundle;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.dp.sgp.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LovelyChoiceDialog extends AbsLovelyDialog<LovelyChoiceDialog> {
    private static final String KEY_ITEM_CHECKED_STATES = "key_item_checked_states";
    private ListView choicesList;
    private TextView confirmButton;

    public interface OnItemSelectedListener<T> {
        void onItemSelected(int i, T t);
    }

    public interface OnItemsSelectedListener<T> {
        void onItemsSelected(List<Integer> list, List<T> list2);
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    protected int getLayout() {
        return R.layout.dialog_choice;
    }

    public LovelyChoiceDialog(Context context) {
        super(context);
        this.choicesList = (ListView) findView(R.id.ld_choices);
    }

    public LovelyChoiceDialog(Context context, int i) {
        super(context, i);
        this.choicesList = (ListView) findView(R.id.ld_choices);
    }

    public <T> LovelyChoiceDialog setItems(T[] tArr, OnItemSelectedListener<T> onItemSelectedListener) {
        return setItems(Arrays.asList(tArr), onItemSelectedListener);
    }

    public <T> LovelyChoiceDialog setItems(List<T> list, OnItemSelectedListener<T> onItemSelectedListener) {
        return setItems(new ArrayAdapter<>(getContext(), R.layout.item_simple_text, android.R.id.text1, list), onItemSelectedListener);
    }

    public <T> LovelyChoiceDialog setItems(ArrayAdapter<T> arrayAdapter, OnItemSelectedListener<T> onItemSelectedListener) {
        this.choicesList.setOnItemClickListener(new ItemSelectedAdapter(onItemSelectedListener));
        this.choicesList.setAdapter((ListAdapter) arrayAdapter);
        return this;
    }

    public <T> LovelyChoiceDialog setItemsMultiChoice(T[] tArr, OnItemsSelectedListener<T> onItemsSelectedListener) {
        return setItemsMultiChoice(tArr, (boolean[]) null, onItemsSelectedListener);
    }

    public <T> LovelyChoiceDialog setItemsMultiChoice(T[] tArr, boolean[] zArr, OnItemsSelectedListener<T> onItemsSelectedListener) {
        return setItemsMultiChoice(Arrays.asList(tArr), zArr, onItemsSelectedListener);
    }

    public <T> LovelyChoiceDialog setItemsMultiChoice(List<T> list, OnItemsSelectedListener<T> onItemsSelectedListener) {
        return setItemsMultiChoice(list, (boolean[]) null, onItemsSelectedListener);
    }

    public <T> LovelyChoiceDialog setItemsMultiChoice(List<T> list, boolean[] zArr, OnItemsSelectedListener<T> onItemsSelectedListener) {
        return setItemsMultiChoice(new ArrayAdapter<>(getContext(), R.layout.item_simple_text_multichoice, android.R.id.text1, list), zArr, onItemsSelectedListener);
    }

    public <T> LovelyChoiceDialog setItemsMultiChoice(ArrayAdapter<T> arrayAdapter, OnItemsSelectedListener<T> onItemsSelectedListener) {
        return setItemsMultiChoice(arrayAdapter, (boolean[]) null, onItemsSelectedListener);
    }

    public <T> LovelyChoiceDialog setItemsMultiChoice(ArrayAdapter<T> arrayAdapter, boolean[] zArr, OnItemsSelectedListener<T> onItemsSelectedListener) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_footer_confirm, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.ld_btn_confirm);
        this.confirmButton = textView;
        textView.setOnClickListener(new ItemsSelectedAdapter(onItemsSelectedListener));
        this.choicesList.addFooterView(viewInflate);
        ListView listView = (ListView) findView(R.id.ld_choices);
        listView.setChoiceMode(2);
        listView.setAdapter((ListAdapter) arrayAdapter);
        if (zArr != null) {
            for (int i = 0; i < zArr.length; i++) {
                listView.setItemChecked(i, zArr[i]);
            }
        }
        return this;
    }

    public LovelyChoiceDialog setConfirmButtonText(int i) {
        return setConfirmButtonText(string(i));
    }

    public LovelyChoiceDialog setConfirmButtonText(String str) {
        TextView textView = this.confirmButton;
        if (textView == null) {
            throw new IllegalStateException(string(R.string.ex_msg_dialog_choice_confirm));
        }
        textView.setText(str);
        return this;
    }

    public LovelyChoiceDialog setConfirmButtonColor(int i) {
        TextView textView = this.confirmButton;
        if (textView == null) {
            throw new IllegalStateException(string(R.string.ex_msg_dialog_choice_confirm));
        }
        textView.setTextColor(i);
        return this;
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (isMultiChoiceList()) {
            boolean[] zArr = new boolean[this.choicesList.getAdapter().getCount()];
            SparseBooleanArray checkedItemPositions = this.choicesList.getCheckedItemPositions();
            for (int i = 0; i < checkedItemPositions.size(); i++) {
                if (checkedItemPositions.valueAt(i)) {
                    zArr[checkedItemPositions.keyAt(i)] = true;
                }
            }
            bundle.putBooleanArray(KEY_ITEM_CHECKED_STATES, zArr);
        }
    }

    @Override // com.dp.sgp.lovelydialog.AbsLovelyDialog
    void restoreState(Bundle bundle) {
        boolean[] booleanArray;
        super.restoreState(bundle);
        if (!isMultiChoiceList() || (booleanArray = bundle.getBooleanArray(KEY_ITEM_CHECKED_STATES)) == null) {
            return;
        }
        for (int i = 0; i < booleanArray.length; i++) {
            this.choicesList.setItemChecked(i, booleanArray[i]);
        }
    }

    private boolean isMultiChoiceList() {
        return this.choicesList.getChoiceMode() == 2;
    }

    private class ItemSelectedAdapter<T> implements AdapterView.OnItemClickListener {
        private OnItemSelectedListener<T> adaptee;

        private ItemSelectedAdapter(OnItemSelectedListener<T> onItemSelectedListener) {
            this.adaptee = onItemSelectedListener;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            OnItemSelectedListener<T> onItemSelectedListener = this.adaptee;
            if (onItemSelectedListener != 0) {
                onItemSelectedListener.onItemSelected(i, adapterView.getItemAtPosition(i));
            }
            LovelyChoiceDialog.this.dismiss();
        }
    }

    private class ItemsSelectedAdapter<T> implements View.OnClickListener {
        private OnItemsSelectedListener<T> adaptee;

        private ItemsSelectedAdapter(OnItemsSelectedListener<T> onItemsSelectedListener) {
            this.adaptee = onItemsSelectedListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.adaptee != null) {
                SparseBooleanArray checkedItemPositions = LovelyChoiceDialog.this.choicesList.getCheckedItemPositions();
                ArrayList arrayList = new ArrayList(checkedItemPositions.size());
                ArrayList arrayList2 = new ArrayList(checkedItemPositions.size());
                ListAdapter adapter = LovelyChoiceDialog.this.choicesList.getAdapter();
                for (int i = 0; i < adapter.getCount(); i++) {
                    if (checkedItemPositions.get(i)) {
                        arrayList2.add(Integer.valueOf(i));
                        arrayList.add(adapter.getItem(i));
                    }
                }
                this.adaptee.onItemsSelected(arrayList2, arrayList);
            }
            LovelyChoiceDialog.this.dismiss();
        }
    }
}
