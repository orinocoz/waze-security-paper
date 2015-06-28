// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.internal.LikeActionController;
import com.facebook.internal.LikeBoxCountView;
import com.facebook.internal.LikeButton;
import com.facebook.internal.Utility;

public class LikeView extends FrameLayout
{
    public static final class AuxiliaryViewPosition extends Enum
    {

        public static final AuxiliaryViewPosition BOTTOM;
        static AuxiliaryViewPosition DEFAULT;
        private static final AuxiliaryViewPosition ENUM$VALUES[];
        public static final AuxiliaryViewPosition INLINE;
        public static final AuxiliaryViewPosition TOP;
        private int intValue;
        private String stringValue;

        static AuxiliaryViewPosition fromInt(int i)
        {
            AuxiliaryViewPosition aauxiliaryviewposition[];
            int j;
            int k;
            aauxiliaryviewposition = values();
            j = aauxiliaryviewposition.length;
            k = 0;
_L6:
            if (k < j) goto _L2; else goto _L1
_L1:
            AuxiliaryViewPosition auxiliaryviewposition = null;
_L4:
            return auxiliaryviewposition;
_L2:
            auxiliaryviewposition = aauxiliaryviewposition[k];
            if (auxiliaryviewposition.getValue() == i) goto _L4; else goto _L3
_L3:
            k++;
            if (true) goto _L6; else goto _L5
_L5:
        }

        private int getValue()
        {
            return intValue;
        }

        public static AuxiliaryViewPosition valueOf(String s)
        {
            return (AuxiliaryViewPosition)Enum.valueOf(com/facebook/widget/LikeView$AuxiliaryViewPosition, s);
        }

        public static AuxiliaryViewPosition[] values()
        {
            AuxiliaryViewPosition aauxiliaryviewposition[] = ENUM$VALUES;
            int i = aauxiliaryviewposition.length;
            AuxiliaryViewPosition aauxiliaryviewposition1[] = new AuxiliaryViewPosition[i];
            System.arraycopy(aauxiliaryviewposition, 0, aauxiliaryviewposition1, 0, i);
            return aauxiliaryviewposition1;
        }

        public String toString()
        {
            return stringValue;
        }

        static 
        {
            BOTTOM = new AuxiliaryViewPosition("BOTTOM", 0, "bottom", 0);
            INLINE = new AuxiliaryViewPosition("INLINE", 1, "inline", 1);
            TOP = new AuxiliaryViewPosition("TOP", 2, "top", 2);
            AuxiliaryViewPosition aauxiliaryviewposition[] = new AuxiliaryViewPosition[3];
            aauxiliaryviewposition[0] = BOTTOM;
            aauxiliaryviewposition[1] = INLINE;
            aauxiliaryviewposition[2] = TOP;
            ENUM$VALUES = aauxiliaryviewposition;
            DEFAULT = BOTTOM;
        }


        private AuxiliaryViewPosition(String s, int i, String s1, int j)
        {
            super(s, i);
            stringValue = s1;
            intValue = j;
        }
    }

    public static final class HorizontalAlignment extends Enum
    {

        public static final HorizontalAlignment CENTER;
        static HorizontalAlignment DEFAULT;
        private static final HorizontalAlignment ENUM$VALUES[];
        public static final HorizontalAlignment LEFT;
        public static final HorizontalAlignment RIGHT;
        private int intValue;
        private String stringValue;

        static HorizontalAlignment fromInt(int i)
        {
            HorizontalAlignment ahorizontalalignment[];
            int j;
            int k;
            ahorizontalalignment = values();
            j = ahorizontalalignment.length;
            k = 0;
_L6:
            if (k < j) goto _L2; else goto _L1
_L1:
            HorizontalAlignment horizontalalignment = null;
_L4:
            return horizontalalignment;
_L2:
            horizontalalignment = ahorizontalalignment[k];
            if (horizontalalignment.getValue() == i) goto _L4; else goto _L3
_L3:
            k++;
            if (true) goto _L6; else goto _L5
_L5:
        }

        private int getValue()
        {
            return intValue;
        }

        public static HorizontalAlignment valueOf(String s)
        {
            return (HorizontalAlignment)Enum.valueOf(com/facebook/widget/LikeView$HorizontalAlignment, s);
        }

        public static HorizontalAlignment[] values()
        {
            HorizontalAlignment ahorizontalalignment[] = ENUM$VALUES;
            int i = ahorizontalalignment.length;
            HorizontalAlignment ahorizontalalignment1[] = new HorizontalAlignment[i];
            System.arraycopy(ahorizontalalignment, 0, ahorizontalalignment1, 0, i);
            return ahorizontalalignment1;
        }

        public String toString()
        {
            return stringValue;
        }

        static 
        {
            CENTER = new HorizontalAlignment("CENTER", 0, "center", 0);
            LEFT = new HorizontalAlignment("LEFT", 1, "left", 1);
            RIGHT = new HorizontalAlignment("RIGHT", 2, "right", 2);
            HorizontalAlignment ahorizontalalignment[] = new HorizontalAlignment[3];
            ahorizontalalignment[0] = CENTER;
            ahorizontalalignment[1] = LEFT;
            ahorizontalalignment[2] = RIGHT;
            ENUM$VALUES = ahorizontalalignment;
            DEFAULT = CENTER;
        }


        private HorizontalAlignment(String s, int i, String s1, int j)
        {
            super(s, i);
            stringValue = s1;
            intValue = j;
        }
    }

    private class LikeActionControllerCreationCallback
        implements com.facebook.internal.LikeActionController.CreationCallback
    {

        private boolean isCancelled;
        final LikeView this$0;

        public void cancel()
        {
            isCancelled = true;
        }

        public void onComplete(LikeActionController likeactioncontroller)
        {
            if (isCancelled)
            {
                return;
            } else
            {
                associateWithLikeActionController(likeactioncontroller);
                updateLikeStateAndLayout();
                creationCallback = null;
                return;
            }
        }

        private LikeActionControllerCreationCallback()
        {
            this$0 = LikeView.this;
            super();
        }

        LikeActionControllerCreationCallback(LikeActionControllerCreationCallback likeactioncontrollercreationcallback)
        {
            this();
        }
    }

    private class LikeControllerBroadcastReceiver extends BroadcastReceiver
    {

        final LikeView this$0;

        public void onReceive(Context context, Intent intent)
        {
            String s;
            Bundle bundle;
            s = intent.getAction();
            bundle = intent.getExtras();
            boolean flag = true;
            if (bundle != null)
            {
                String s1 = bundle.getString("com.facebook.sdk.LikeActionController.OBJECT_ID");
                if (!Utility.isNullOrEmpty(s1) && !Utility.areObjectsEqual(objectId, s1))
                {
                    flag = false;
                } else
                {
                    flag = true;
                }
            }
            if (flag) goto _L2; else goto _L1
_L1:
            return;
_L2:
            if ("com.facebook.sdk.LikeActionController.UPDATED".equals(s))
            {
                updateLikeStateAndLayout();
                return;
            }
            if (!"com.facebook.sdk.LikeActionController.DID_ERROR".equals(s))
            {
                continue; /* Loop/switch isn't completed */
            }
            if (onErrorListener == null) goto _L1; else goto _L3
_L3:
            onErrorListener.onError(bundle);
            return;
            if (!"com.facebook.sdk.LikeActionController.DID_RESET".equals(s)) goto _L1; else goto _L4
_L4:
            setObjectIdForced(objectId);
            updateLikeStateAndLayout();
            return;
        }

        private LikeControllerBroadcastReceiver()
        {
            this$0 = LikeView.this;
            super();
        }

        LikeControllerBroadcastReceiver(LikeControllerBroadcastReceiver likecontrollerbroadcastreceiver)
        {
            this();
        }
    }

    public static interface OnErrorListener
    {

        public abstract void onError(Bundle bundle);
    }

    public static final class Style extends Enum
    {

        public static final Style BOX_COUNT;
        public static final Style BUTTON;
        static Style DEFAULT;
        private static final Style ENUM$VALUES[];
        public static final Style STANDARD;
        private int intValue;
        private String stringValue;

        static Style fromInt(int i)
        {
            Style astyle[];
            int j;
            int k;
            astyle = values();
            j = astyle.length;
            k = 0;
_L6:
            if (k < j) goto _L2; else goto _L1
_L1:
            Style style = null;
_L4:
            return style;
_L2:
            style = astyle[k];
            if (style.getValue() == i) goto _L4; else goto _L3
_L3:
            k++;
            if (true) goto _L6; else goto _L5
_L5:
        }

        private int getValue()
        {
            return intValue;
        }

        public static Style valueOf(String s)
        {
            return (Style)Enum.valueOf(com/facebook/widget/LikeView$Style, s);
        }

        public static Style[] values()
        {
            Style astyle[] = ENUM$VALUES;
            int i = astyle.length;
            Style astyle1[] = new Style[i];
            System.arraycopy(astyle, 0, astyle1, 0, i);
            return astyle1;
        }

        public String toString()
        {
            return stringValue;
        }

        static 
        {
            STANDARD = new Style("STANDARD", 0, "standard", 0);
            BUTTON = new Style("BUTTON", 1, "button", 1);
            BOX_COUNT = new Style("BOX_COUNT", 2, "box_count", 2);
            Style astyle[] = new Style[3];
            astyle[0] = STANDARD;
            astyle[1] = BUTTON;
            astyle[2] = BOX_COUNT;
            ENUM$VALUES = astyle;
            DEFAULT = STANDARD;
        }


        private Style(String s, int i, String s1, int j)
        {
            super(s, i);
            stringValue = s1;
            intValue = j;
        }
    }


    private static int $SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition[];
    private static final int NO_FOREGROUND_COLOR = -1;
    private AuxiliaryViewPosition auxiliaryViewPosition;
    private BroadcastReceiver broadcastReceiver;
    private LinearLayout containerView;
    private LikeActionControllerCreationCallback creationCallback;
    private int edgePadding;
    private int foregroundColor;
    private HorizontalAlignment horizontalAlignment;
    private int internalPadding;
    private LikeActionController likeActionController;
    private LikeBoxCountView likeBoxCountView;
    private LikeButton likeButton;
    private Style likeViewStyle;
    private String objectId;
    private OnErrorListener onErrorListener;
    private TextView socialSentenceView;

    static int[] $SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition()
    {
        int ai[] = $SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[AuxiliaryViewPosition.values().length];
        try
        {
            ai1[AuxiliaryViewPosition.BOTTOM.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[AuxiliaryViewPosition.INLINE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[AuxiliaryViewPosition.TOP.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        $SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition = ai1;
        return ai1;
    }

    public LikeView(Context context)
    {
        super(context);
        likeViewStyle = Style.DEFAULT;
        horizontalAlignment = HorizontalAlignment.DEFAULT;
        auxiliaryViewPosition = AuxiliaryViewPosition.DEFAULT;
        foregroundColor = -1;
        initialize(context);
    }

    public LikeView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        likeViewStyle = Style.DEFAULT;
        horizontalAlignment = HorizontalAlignment.DEFAULT;
        auxiliaryViewPosition = AuxiliaryViewPosition.DEFAULT;
        foregroundColor = -1;
        parseAttributes(attributeset);
        initialize(context);
    }

    private void associateWithLikeActionController(LikeActionController likeactioncontroller)
    {
        likeActionController = likeactioncontroller;
        broadcastReceiver = new LikeControllerBroadcastReceiver(null);
        LocalBroadcastManager localbroadcastmanager = LocalBroadcastManager.getInstance(getContext());
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.facebook.sdk.LikeActionController.UPDATED");
        intentfilter.addAction("com.facebook.sdk.LikeActionController.DID_ERROR");
        intentfilter.addAction("com.facebook.sdk.LikeActionController.DID_RESET");
        localbroadcastmanager.registerReceiver(broadcastReceiver, intentfilter);
    }

    private Bundle getAnalyticsParameters()
    {
        Bundle bundle = new Bundle();
        bundle.putString("style", likeViewStyle.toString());
        bundle.putString("auxiliary_position", auxiliaryViewPosition.toString());
        bundle.putString("horizontal_alignment", horizontalAlignment.toString());
        bundle.putString("object_id", Utility.coerceValueIfNullOrEmpty(objectId, ""));
        return bundle;
    }

    public static boolean handleOnActivityResult(Context context, int i, int j, Intent intent)
    {
        return LikeActionController.handleOnActivityResult(context, i, j, intent);
    }

    private void initialize(Context context)
    {
        edgePadding = getResources().getDimensionPixelSize(com.facebook.android.R.dimen.com_facebook_likeview_edge_padding);
        internalPadding = getResources().getDimensionPixelSize(com.facebook.android.R.dimen.com_facebook_likeview_internal_padding);
        if (foregroundColor == -1)
        {
            foregroundColor = getResources().getColor(com.facebook.android.R.color.com_facebook_likeview_text_color);
        }
        setBackgroundColor(0);
        containerView = new LinearLayout(context);
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2);
        containerView.setLayoutParams(layoutparams);
        initializeLikeButton(context);
        initializeSocialSentenceView(context);
        initializeLikeCountView(context);
        containerView.addView(likeButton);
        containerView.addView(socialSentenceView);
        containerView.addView(likeBoxCountView);
        addView(containerView);
        setObjectIdForced(objectId);
        updateLikeStateAndLayout();
    }

    private void initializeLikeButton(Context context)
    {
        boolean flag;
        android.widget.LinearLayout.LayoutParams layoutparams;
        if (likeActionController != null)
        {
            flag = likeActionController.isObjectLiked();
        } else
        {
            flag = false;
        }
        likeButton = new LikeButton(context, flag);
        likeButton.setOnClickListener(new android.view.View.OnClickListener() {

            final LikeView this$0;

            public void onClick(View view)
            {
                toggleLike();
            }

            
            {
                this$0 = LikeView.this;
                super();
            }
        });
        layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
        likeButton.setLayoutParams(layoutparams);
    }

    private void initializeLikeCountView(Context context)
    {
        likeBoxCountView = new LikeBoxCountView(context);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        likeBoxCountView.setLayoutParams(layoutparams);
    }

    private void initializeSocialSentenceView(Context context)
    {
        socialSentenceView = new TextView(context);
        socialSentenceView.setTextSize(0, getResources().getDimension(com.facebook.android.R.dimen.com_facebook_likeview_text_size));
        socialSentenceView.setMaxLines(2);
        socialSentenceView.setTextColor(foregroundColor);
        socialSentenceView.setGravity(17);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -1);
        socialSentenceView.setLayoutParams(layoutparams);
    }

    private void parseAttributes(AttributeSet attributeset)
    {
        TypedArray typedarray;
        if (attributeset != null && getContext() != null)
        {
            if ((typedarray = getContext().obtainStyledAttributes(attributeset, com.facebook.android.R.styleable.com_facebook_like_view)) != null)
            {
                objectId = Utility.coerceValueIfNullOrEmpty(typedarray.getString(1), null);
                likeViewStyle = Style.fromInt(typedarray.getInt(2, Style.DEFAULT.getValue()));
                if (likeViewStyle == null)
                {
                    throw new IllegalArgumentException("Unsupported value for LikeView 'style'");
                }
                auxiliaryViewPosition = AuxiliaryViewPosition.fromInt(typedarray.getInt(3, AuxiliaryViewPosition.DEFAULT.getValue()));
                if (auxiliaryViewPosition == null)
                {
                    throw new IllegalArgumentException("Unsupported value for LikeView 'auxiliary_view_position'");
                }
                horizontalAlignment = HorizontalAlignment.fromInt(typedarray.getInt(4, HorizontalAlignment.DEFAULT.getValue()));
                if (horizontalAlignment == null)
                {
                    throw new IllegalArgumentException("Unsupported value for LikeView 'horizontal_alignment'");
                } else
                {
                    foregroundColor = typedarray.getColor(0, -1);
                    typedarray.recycle();
                    return;
                }
            }
        }
    }

    private void setObjectIdForced(String s)
    {
        tearDownObjectAssociations();
        objectId = s;
        if (Utility.isNullOrEmpty(s))
        {
            return;
        } else
        {
            creationCallback = new LikeActionControllerCreationCallback(null);
            LikeActionController.getControllerForObjectId(getContext(), s, creationCallback);
            return;
        }
    }

    private void tearDownObjectAssociations()
    {
        if (broadcastReceiver != null)
        {
            LocalBroadcastManager.getInstance(getContext()).unregisterReceiver(broadcastReceiver);
            broadcastReceiver = null;
        }
        if (creationCallback != null)
        {
            creationCallback.cancel();
            creationCallback = null;
        }
        likeActionController = null;
    }

    private void toggleLike()
    {
        if (likeActionController != null)
        {
            Activity activity = (Activity)getContext();
            likeActionController.toggleLike(activity, getAnalyticsParameters());
        }
    }

    private void updateBoxCountCaretPosition()
    {
        LikeBoxCountView likeboxcountview;
        switch ($SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition()[auxiliaryViewPosition.ordinal()])
        {
        default:
            return;

        case 3: // '\003'
            likeBoxCountView.setCaretPosition(com.facebook.internal.LikeBoxCountView.LikeBoxCountViewCaretPosition.BOTTOM);
            return;

        case 1: // '\001'
            likeBoxCountView.setCaretPosition(com.facebook.internal.LikeBoxCountView.LikeBoxCountViewCaretPosition.TOP);
            return;

        case 2: // '\002'
            likeboxcountview = likeBoxCountView;
            break;
        }
        com.facebook.internal.LikeBoxCountView.LikeBoxCountViewCaretPosition likeboxcountviewcaretposition;
        if (horizontalAlignment == HorizontalAlignment.RIGHT)
        {
            likeboxcountviewcaretposition = com.facebook.internal.LikeBoxCountView.LikeBoxCountViewCaretPosition.RIGHT;
        } else
        {
            likeboxcountviewcaretposition = com.facebook.internal.LikeBoxCountView.LikeBoxCountViewCaretPosition.LEFT;
        }
        likeboxcountview.setCaretPosition(likeboxcountviewcaretposition);
    }

    private void updateLayout()
    {
        Object obj;
        int i = 1;
        android.widget.FrameLayout.LayoutParams layoutparams = (android.widget.FrameLayout.LayoutParams)containerView.getLayoutParams();
        android.widget.LinearLayout.LayoutParams layoutparams1 = (android.widget.LinearLayout.LayoutParams)likeButton.getLayoutParams();
        int j;
        LinearLayout linearlayout;
        if (horizontalAlignment == HorizontalAlignment.LEFT)
        {
            j = 3;
        } else
        if (horizontalAlignment == HorizontalAlignment.CENTER)
        {
            j = i;
        } else
        {
            j = 5;
        }
        layoutparams.gravity = j | 0x30;
        layoutparams1.gravity = j;
        socialSentenceView.setVisibility(8);
        likeBoxCountView.setVisibility(8);
        if (likeViewStyle != Style.STANDARD || likeActionController == null || Utility.isNullOrEmpty(likeActionController.getSocialSentence())) goto _L2; else goto _L1
_L1:
        obj = socialSentenceView;
_L8:
        ((View) (obj)).setVisibility(0);
        ((android.widget.LinearLayout.LayoutParams)((View) (obj)).getLayoutParams()).gravity = j;
        linearlayout = containerView;
        if (auxiliaryViewPosition == AuxiliaryViewPosition.INLINE)
        {
            i = 0;
        }
        linearlayout.setOrientation(i);
        if (auxiliaryViewPosition == AuxiliaryViewPosition.TOP || auxiliaryViewPosition == AuxiliaryViewPosition.INLINE && horizontalAlignment == HorizontalAlignment.RIGHT)
        {
            containerView.removeView(likeButton);
            containerView.addView(likeButton);
        } else
        {
            containerView.removeView(((View) (obj)));
            containerView.addView(((View) (obj)));
        }
        $SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition()[auxiliaryViewPosition.ordinal()];
        JVM INSTR tableswitch 1 3: default 240
    //                   1 349
    //                   2 371
    //                   3 327;
           goto _L3 _L4 _L5 _L6
_L3:
        return;
_L2:
        if (likeViewStyle != Style.BOX_COUNT || likeActionController == null || Utility.isNullOrEmpty(likeActionController.getLikeCountString())) goto _L3; else goto _L7
_L7:
        updateBoxCountCaretPosition();
        obj = likeBoxCountView;
          goto _L8
_L6:
        ((View) (obj)).setPadding(edgePadding, edgePadding, edgePadding, internalPadding);
        return;
_L4:
        ((View) (obj)).setPadding(edgePadding, internalPadding, edgePadding, edgePadding);
        return;
_L5:
        if (horizontalAlignment == HorizontalAlignment.RIGHT)
        {
            ((View) (obj)).setPadding(edgePadding, edgePadding, internalPadding, edgePadding);
            return;
        } else
        {
            ((View) (obj)).setPadding(internalPadding, edgePadding, edgePadding, edgePadding);
            return;
        }
    }

    private void updateLikeStateAndLayout()
    {
        if (likeActionController == null)
        {
            likeButton.setLikeState(false);
            socialSentenceView.setText(null);
            likeBoxCountView.setText(null);
        } else
        {
            likeButton.setLikeState(likeActionController.isObjectLiked());
            socialSentenceView.setText(likeActionController.getSocialSentence());
            likeBoxCountView.setText(likeActionController.getLikeCountString());
        }
        updateLayout();
    }

    public OnErrorListener getOnErrorListener()
    {
        return onErrorListener;
    }

    protected void onDetachedFromWindow()
    {
        setObjectId(null);
        super.onDetachedFromWindow();
    }

    public void setAuxiliaryViewPosition(AuxiliaryViewPosition auxiliaryviewposition)
    {
        if (auxiliaryviewposition == null)
        {
            auxiliaryviewposition = AuxiliaryViewPosition.DEFAULT;
        }
        if (auxiliaryViewPosition != auxiliaryviewposition)
        {
            auxiliaryViewPosition = auxiliaryviewposition;
            updateLayout();
        }
    }

    public void setForegroundColor(int i)
    {
        if (foregroundColor != i)
        {
            socialSentenceView.setTextColor(i);
        }
    }

    public void setHorizontalAlignment(HorizontalAlignment horizontalalignment)
    {
        if (horizontalalignment == null)
        {
            horizontalalignment = HorizontalAlignment.DEFAULT;
        }
        if (horizontalAlignment != horizontalalignment)
        {
            horizontalAlignment = horizontalalignment;
            updateLayout();
        }
    }

    public void setLikeViewStyle(Style style)
    {
        if (style == null)
        {
            style = Style.DEFAULT;
        }
        if (likeViewStyle != style)
        {
            likeViewStyle = style;
            updateLayout();
        }
    }

    public void setObjectId(String s)
    {
        String s1 = Utility.coerceValueIfNullOrEmpty(s, null);
        if (!Utility.areObjectsEqual(s1, objectId))
        {
            setObjectIdForced(s1);
            updateLikeStateAndLayout();
        }
    }

    public void setOnErrorListener(OnErrorListener onerrorlistener)
    {
        onErrorListener = onerrorlistener;
    }







}
