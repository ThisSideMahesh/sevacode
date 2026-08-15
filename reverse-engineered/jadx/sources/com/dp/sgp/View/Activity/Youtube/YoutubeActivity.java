package com.dp.sgp.View.Activity.Youtube;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.widget.DrawerLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.dp.sgp.R;
import com.google.android.youtube.player.YouTubeBaseActivity;
import com.google.android.youtube.player.YouTubeInitializationResult;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.YouTubePlayerView;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class YoutubeActivity extends YouTubeBaseActivity implements YouTubePlayer.OnInitializedListener {
    private static final int RECOVERY_DIALOG_REQUEST = 1;
    private static final String YoutubeDeveloperKey = "AIzaSyCpMIfwABV3t6NzYtAFq1uLkBwqlHFM8rs";
    private YouTubePlayer YPlayer;
    private DrawerLayout mDrawerLayout;
    TextView txt_desc;
    TextView txt_desc1;
    TextView txt_desc2;
    TextView txt_header;
    TextView txt_header1;
    TextView txt_header2;
    YouTubePlayerView youTubeView;
    private String extra = "";
    private String VideoId = "";
    private String desc_short = "";

    @Override // com.google.android.youtube.player.YouTubeBaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_youtube);
        String stringExtra = getIntent().getStringExtra("media_url");
        this.extra = stringExtra;
        String lastPathSegment = Uri.parse(stringExtra).getLastPathSegment();
        YouTubePlayerView youTubePlayerView = (YouTubePlayerView) findViewById(R.id.youtube_view);
        this.youTubeView = youTubePlayerView;
        youTubePlayerView.initialize(YoutubeDeveloperKey, this);
        this.extra.split("://");
        this.extra.split("/");
        new StringTokenizer(this.extra, "/").nextToken();
        this.VideoId = lastPathSegment;
    }

    @Override // com.google.android.youtube.player.YouTubePlayer.OnInitializedListener
    public void onInitializationSuccess(YouTubePlayer.Provider provider, YouTubePlayer youTubePlayer, boolean z) {
        this.YPlayer = youTubePlayer;
        if (z) {
            return;
        }
        youTubePlayer.cueVideo(this.VideoId);
    }

    @Override // com.google.android.youtube.player.YouTubePlayer.OnInitializedListener
    public void onInitializationFailure(YouTubePlayer.Provider provider, YouTubeInitializationResult youTubeInitializationResult) {
        if (youTubeInitializationResult.isUserRecoverableError()) {
            youTubeInitializationResult.getErrorDialog(this, 1).show();
        } else {
            Toast.makeText(this, String.format("There was an error initializing the YouTubePlayer", youTubeInitializationResult.toString()), 1).show();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1) {
            getYouTubePlayerProvider().initialize(YoutubeDeveloperKey, this);
        }
    }

    protected YouTubePlayer.Provider getYouTubePlayerProvider() {
        return (YouTubePlayerView) findViewById(R.id.youtube_view);
    }
}
