package com.dp.sgp.View.Fragment.Vibhag;

import android.os.Build;
import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.v4.app.Fragment;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.dp.sgp.Constants.Key;
import com.dp.sgp.R;

/* JADX INFO: loaded from: classes.dex */
public class VibaghDetailsFragment extends Fragment {
    ImageView backdrop;
    String lStrText = "The Dindori Pranit model of service for the downtrodden was laid down directly by Bhagvan Shree Swami Samarth Maharaj (1149-1878). This work was carried forward by Sadguru Narayandasji Pithle Maharaj (1878-1974), Sadguru Moredada (1922-1988) and is being run now by His Holiness His Holiness Gurumauli well over four decades now.\n\n  For the past two decades, His Holiness Gurmauli has been executing a unique 18-point Rural Development Programme (RDP) from Shree Gurupeeth, Trimbakeshwar, that conducts practical workshops, study tours, seminars and training for one and all, free of cost, all over India.\n\n  The aim is to raise a new Indian, proud of his or her culture and with a scientific bent of mind and confident to face the future. The SevaMarg has achieved this to a great extent and hundreds of social and non-governmental organizations have recognized this work and honoured His Holiness His Holiness Gurumauli for the achievements.\n\n  This counselling sessions that are essentially a man-&-mind healing technique run across more than 5000 centres of Dindori Pranit in India and abroad take into consideration the spiritual, social, educational and ancestral background of the troubled and unhappy solution seeker and suggests him or her simple easy-to-do self-help techniques in the above fields.\n\n\n  Millions of distressed souls visit these centres every day. Some want to quit alcohol or other vices,  others a matrimonial match while some others are desperately trying to save a home that is falling apart. A huge number is of highly educated youth who find themselves lacking in contentment despite the perks of an elite modern-day life. There are others who want success in services as also an equally high number that wants to pull-out loss-making industries from the pit.\n\n  The link that unites these all is faith & spirituality. And the missing link is direction, self-esteem and a sense of purpose in life. His Holiness His Holiness Gurumauli believes that all human beings, including those with virtues & vices are essentially noble souls; it’s the lack of direction, self-esteem and the sense of purpose in life that divides them in shades of grey. Depending on what way one chooses while leading one’s life, the choice also gets divided between peace, happiness & contentment or decay, disease and disenchantment.\n\n  Dindori Pranit has showered bliss in the lives of millions over the past 100 years by imbibing value education in young minds raising an entire generation free from vice and abuse, trained millions of farmers into organic farming & modern techniques of agriculture, built bonds of communal harmony by enhancing interpersonal faith and mutual respect through various activities, conducted successful research to find cure for dreaded diseases like cancer, conducted millions of no-dowry marriages and de-addicted an equally large number of people.";
    String strtext = "";
    TextView textView;
    TextView textView2;
    View v;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_vibagh_details, viewGroup, false);
        this.v = viewInflate;
        this.backdrop = (ImageView) viewInflate.findViewById(R.id.backdrop);
        this.textView = (TextView) this.v.findViewById(R.id.textView_title);
        this.textView2 = (TextView) this.v.findViewById(R.id.textView2);
        Bundle arguments = getArguments();
        initCollapsingToolbar(this.v);
        if (arguments != null) {
            String string = getArguments().getString(Key.MESSAGE);
            this.strtext = string;
            this.textView.setText(string);
            getActivity().setTitle(this.strtext);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.textView2.setText(Html.fromHtml(this.lStrText, 0));
        } else {
            this.textView2.setText(Html.fromHtml(this.lStrText));
        }
        return this.v;
    }

    private void initCollapsingToolbar(View view) {
        final CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) view.findViewById(R.id.collapsing_toolbar);
        collapsingToolbarLayout.setTitle(" ");
        AppBarLayout appBarLayout = (AppBarLayout) view.findViewById(R.id.appbar);
        appBarLayout.setExpanded(true);
        appBarLayout.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.dp.sgp.View.Fragment.Vibhag.VibaghDetailsFragment.1
            boolean isShow = false;
            int scrollRange = -1;

            @Override // android.support.design.widget.AppBarLayout.OnOffsetChangedListener, android.support.design.widget.AppBarLayout.BaseOnOffsetChangedListener
            public void onOffsetChanged(AppBarLayout appBarLayout2, int i) {
                if (this.scrollRange == -1) {
                    this.scrollRange = appBarLayout2.getTotalScrollRange();
                }
                if (this.scrollRange + i == 0) {
                    collapsingToolbarLayout.setTitle(VibaghDetailsFragment.this.getString(R.string.app_name));
                    this.isShow = true;
                } else if (this.isShow) {
                    collapsingToolbarLayout.setTitle(" ");
                    this.isShow = false;
                }
            }
        });
    }
}
