package com.dp.sgp.bottomsheets;

import android.os.Bundle;
import android.support.design.widget.BottomSheetDialogFragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.dp.sgp.Adapters.MuhurathaAdapter;
import com.dp.sgp.Model.MuhurathModel;
import com.dp.sgp.R;
import com.dp.sgp.database.DatabaseUtils;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class SimpleTextBottomSheet extends BottomSheetDialogFragment {
    public static final String DPU = "dpu";
    public static final String MUHURTA = "muhurta";
    public static final String SANVAR = "sanvar";
    public static final String SHUBA_SHUBH = "shubha_shubh";
    private int MONTH_OFFSET = 1;
    private int month;
    List<MuhurathModel> muhurathModelList;
    private RecyclerView recyclerView;
    private View rootView;
    private TextView tvData;
    private TextView tvHeader;
    private String type;
    private int year;

    public static SimpleTextBottomSheet newInstance(Bundle bundle) {
        SimpleTextBottomSheet simpleTextBottomSheet = new SimpleTextBottomSheet();
        simpleTextBottomSheet.setArguments(bundle);
        return simpleTextBottomSheet;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.type = (String) getArguments().getSerializable("TYPE");
            this.year = ((Integer) getArguments().getSerializable("YEAR")).intValue();
            this.month = ((Integer) getArguments().getSerializable("MONTH")).intValue();
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.simple_text_bottomsheet, viewGroup);
        this.rootView = viewInflate;
        this.recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recycler_view);
        this.muhurathModelList = new ArrayList();
        this.rootView.findViewById(R.id.ivClose).setOnClickListener(new View.OnClickListener() { // from class: com.dp.sgp.bottomsheets.SimpleTextBottomSheet.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SimpleTextBottomSheet.this.dismiss();
            }
        });
        this.tvHeader = (TextView) this.rootView.findViewById(R.id.tvTitle);
        this.tvData = (TextView) this.rootView.findViewById(R.id.tvData);
        String str = this.type;
        str.hashCode();
        int i = 0;
        switch (str) {
            case "sanvar":
                this.tvHeader.setText(getActivity().getResources().getString(R.string.utsav));
                this.tvData.setText(TextUtils.isEmpty(DatabaseUtils.getSanvar(getActivity(), this.year, this.month)) ? getActivity().getResources().getString(R.string.no_data_available) : DatabaseUtils.getSanvar(getActivity(), this.year, this.month));
                ArrayList arrayList = new ArrayList(Arrays.asList(this.tvData.getText().toString().split("\\n\\n")));
                while (i < arrayList.size()) {
                    System.out.println(" -->" + arrayList.get(i));
                    String string = arrayList.get(i).toString();
                    if (!string.equalsIgnoreCase("")) {
                        String strNextToken = new StringTokenizer(string, "\\n\\n").nextToken();
                        String strNextToken2 = new StringTokenizer(strNextToken, " ").nextToken();
                        String strReplace = strNextToken.replace(strNextToken2, "");
                        MuhurathModel muhurathModel = new MuhurathModel();
                        muhurathModel.setName(strNextToken2);
                        muhurathModel.setTime(strReplace);
                        this.muhurathModelList.add(muhurathModel);
                    }
                    List<MuhurathModel> list = this.muhurathModelList;
                    if (list != null && list.size() > 0) {
                        Log.d("DatabaseResponse", new Gson().toJson(this.muhurathModelList));
                        MuhurathaAdapter muhurathaAdapter = new MuhurathaAdapter(getActivity(), this.muhurathModelList);
                        this.recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
                        this.recyclerView.setAdapter(muhurathaAdapter);
                    }
                    i++;
                }
                break;
            case "dpu":
                this.tvHeader.setText(getActivity().getResources().getString(R.string.dpu));
                this.tvData.setText(TextUtils.isEmpty(DatabaseUtils.getDPU(getActivity(), this.year)) ? getActivity().getResources().getString(R.string.no_data_available) : DatabaseUtils.getDPU(getActivity(), this.year));
                ArrayList arrayList2 = new ArrayList(Arrays.asList(this.tvData.getText().toString().split("\\r\\n")));
                while (i < arrayList2.size()) {
                    System.out.println(" -->" + arrayList2.get(i));
                    String string2 = arrayList2.get(i).toString();
                    if (!string2.equalsIgnoreCase("")) {
                        String strNextToken3 = new StringTokenizer(string2, "\\n\\n").nextToken();
                        String strNextToken4 = new StringTokenizer(strNextToken3, "-").nextToken();
                        String strReplace2 = strNextToken3.replace(strNextToken4, "");
                        MuhurathModel muhurathModel2 = new MuhurathModel();
                        muhurathModel2.setName(strNextToken4);
                        muhurathModel2.setTime(strReplace2);
                        this.muhurathModelList.add(muhurathModel2);
                    }
                    List<MuhurathModel> list2 = this.muhurathModelList;
                    if (list2 != null && list2.size() > 0) {
                        Log.d("DatabaseResponse", new Gson().toJson(this.muhurathModelList));
                        MuhurathaAdapter muhurathaAdapter2 = new MuhurathaAdapter(getActivity(), this.muhurathModelList);
                        this.recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
                        this.recyclerView.setAdapter(muhurathaAdapter2);
                    }
                    i++;
                }
                break;
            case "shubha_shubh":
                this.tvHeader.setText(getActivity().getResources().getString(R.string.lbl_shubhshubh));
                this.tvData.setText(TextUtils.isEmpty(DatabaseUtils.getShubhaShubh(getActivity(), this.year, this.month)) ? getActivity().getResources().getString(R.string.no_data_available) : DatabaseUtils.getShubhaShubh(getActivity(), this.year, this.month));
                ArrayList arrayList3 = new ArrayList(Arrays.asList(this.tvData.getText().toString().split("\\n\\n")));
                while (i < arrayList3.size()) {
                    System.out.println(" -->" + arrayList3.get(i));
                    String string3 = arrayList3.get(i).toString();
                    if (!string3.equalsIgnoreCase("")) {
                        String strNextToken5 = new StringTokenizer(string3, "\\n\\n").nextToken();
                        String strNextToken6 = new StringTokenizer(strNextToken5, " ").nextToken();
                        String strReplace3 = strNextToken5.replace(strNextToken6, "");
                        MuhurathModel muhurathModel3 = new MuhurathModel();
                        muhurathModel3.setName(strNextToken6);
                        muhurathModel3.setTime(strReplace3);
                        this.muhurathModelList.add(muhurathModel3);
                    }
                    List<MuhurathModel> list3 = this.muhurathModelList;
                    if (list3 != null && list3.size() > 0) {
                        Log.d("DatabaseResponse", new Gson().toJson(this.muhurathModelList));
                        MuhurathaAdapter muhurathaAdapter3 = new MuhurathaAdapter(getActivity(), this.muhurathModelList);
                        this.recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
                        this.recyclerView.setAdapter(muhurathaAdapter3);
                    }
                    i++;
                }
                break;
            case "muhurta":
                this.tvHeader.setText(getActivity().getResources().getString(R.string.lbl_muhurt));
                this.tvData.setText(TextUtils.isEmpty(DatabaseUtils.getMuhurta(getActivity(), this.year, this.month).getEvent()) ? getActivity().getResources().getString(R.string.no_data_available) : DatabaseUtils.getMuhurta(getActivity(), this.year, this.month).getEvent());
                ArrayList arrayList4 = new ArrayList(Arrays.asList(this.tvData.getText().toString().split("\\r\\n\\r\\n")));
                while (i < arrayList4.size()) {
                    System.out.println(" -->" + arrayList4.get(i));
                    StringTokenizer stringTokenizer = new StringTokenizer(new StringTokenizer(arrayList4.get(i).toString(), "\\r\\n\\r\\n").nextToken(), "\r\n");
                    String strNextToken7 = stringTokenizer.nextToken();
                    String strNextToken8 = stringTokenizer.nextToken();
                    MuhurathModel muhurathModel4 = new MuhurathModel();
                    muhurathModel4.setName(strNextToken7);
                    muhurathModel4.setTime(strNextToken8);
                    this.muhurathModelList.add(muhurathModel4);
                    i++;
                }
                List<MuhurathModel> list4 = this.muhurathModelList;
                if (list4 != null && list4.size() > 0) {
                    Log.d("DatabaseResponse", new Gson().toJson(this.muhurathModelList));
                    MuhurathaAdapter muhurathaAdapter4 = new MuhurathaAdapter(getActivity(), this.muhurathModelList);
                    this.recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
                    this.recyclerView.setAdapter(muhurathaAdapter4);
                    break;
                }
                break;
        }
        return this.rootView;
    }
}
