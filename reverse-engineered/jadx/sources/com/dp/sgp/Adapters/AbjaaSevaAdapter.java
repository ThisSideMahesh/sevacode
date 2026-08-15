package com.dp.sgp.Adapters;

import android.content.Context;
import android.graphics.Typeface;
import android.support.v7.widget.RecyclerView;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dp.sgp.Model.SevaNivad;
import com.dp.sgp.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AbjaaSevaAdapter extends RecyclerView.Adapter<ViewHolder> {
    Typeface Font;
    Typeface FontBold;
    Typeface FontExtraBold;
    ArrayList<String> ItemQty;

    /* JADX INFO: renamed from: android, reason: collision with root package name */
    private List<SevaNivad> f0android;
    SevaNivad checkList;
    private Context context;
    String LstrPicture = "";
    String lStrRemark = "";
    String lStrSignature = "";
    String lStrEmployeeImage = "";
    String lStrSSS = "";
    String lStrEdtQty = "";

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i;
    }

    public AbjaaSevaAdapter(Context context, List<SevaNivad> list) {
        this.context = context;
        this.f0android = list;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.new_edt_adpt_rpw, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        this.checkList = this.f0android.get(i);
        this.ItemQty = new ArrayList<>();
        viewHolder.txt_PartNo.setText(this.checkList.get_name());
        viewHolder.Edt_Quantity.addTextChangedListener(new TextWatcher() { // from class: com.dp.sgp.Adapters.AbjaaSevaAdapter.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                AbjaaSevaAdapter.this.lStrSSS = String.valueOf(editable);
                if (AbjaaSevaAdapter.this.lStrSSS == null) {
                    ((SevaNivad) AbjaaSevaAdapter.this.f0android.get(i)).setQty("0");
                } else if (AbjaaSevaAdapter.this.lStrSSS.equalsIgnoreCase("")) {
                    ((SevaNivad) AbjaaSevaAdapter.this.f0android.get(i)).setQty("0");
                } else {
                    ((SevaNivad) AbjaaSevaAdapter.this.f0android.get(i)).setQty(AbjaaSevaAdapter.this.lStrSSS);
                }
            }
        });
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f0android.size();
    }

    public ArrayList<String> getItemQty() {
        return this.ItemQty;
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        EditText Edt_Quantity;
        private ImageView img_signature;
        private ImageView ivVoucherImage;
        private TextView lbl_txt_PartNo;
        private TextView lbl_txt_Quantity;
        private TextView lbl_txt_part_desc;
        private ImageView minus;
        LinearLayout relativeLayout1;
        private TextView txt_ItemCode;
        private TextView txt_PartNo;

        public ViewHolder(View view) {
            super(view);
            this.txt_PartNo = (TextView) view.findViewById(R.id.txt_PartNo);
            this.Edt_Quantity = (EditText) view.findViewById(R.id.Edt_Quantity);
        }
    }

    public List<SevaNivad> getallrecords() {
        return this.f0android;
    }
}
