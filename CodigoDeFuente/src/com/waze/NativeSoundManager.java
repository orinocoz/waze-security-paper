// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.telephony.TelephonyManager;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.settings.SettingsSoundConstants;
import com.waze.strings.DisplayStrings;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze:
//            Logger, AppService, NativeManager, ResManager, 
//            ConfigItem, ConfigManager

public final class NativeSoundManager
    implements ConfigManager.IConfigUpdater
{
    private final class WazeAudioPlayer extends Thread
    {

        private boolean mBuffered;
        private boolean mBuffering;
        private Long mCallback;
        private String mFileName;
        private MediaPlayer mMP;
        final NativeSoundManager this$0;

        private void BufferInternal()
            throws IOException
        {
            mMP = new MediaPlayer();
            mMP.setOnCompletionListener(new CompletionListener(null));
            mMP.setOnErrorListener(new ErrorListener(null));
            FileInputStream fileinputstream;
            float f;
            if (mRouteToSpeaker)
            {
                mMP.setAudioStreamType(0);
            } else
            {
                mMP.setAudioStreamType(3);
            }
            fileinputstream = new FileInputStream(mFileName);
            mMP.setDataSource(fileinputstream.getFD());
            f = getExpVolumeValue();
            Logger.d_("Sound_Manager", (new StringBuilder("Setting volume: ")).append(f).toString());
            if (mIsMuted)
            {
                mMP.setVolume(0.0F, 0.0F);
            } else
            {
                mMP.setVolume(f, f);
            }
            mMP.prepare();
            mBuffered = true;
        }

        private void finalizePlay(MediaPlayer mediaplayer)
        {
            mediaplayer.release();
            mPlaying = false;
            NativeManager.Post(new Runnable() {

                final WazeAudioPlayer this$1;

                public void run()
                {
                    PlayNext();
                }

            
            {
                this$1 = WazeAudioPlayer.this;
                super();
            }
            });
            if (mCallback.longValue() != 0L)
            {
                NativeManager.Post(new Runnable() {

                    final WazeAudioPlayer this$1;

                    public void run()
                    {
                        SoundCallbackNTV(mCallback.longValue());
                    }

            
            {
                this$1 = WazeAudioPlayer.this;
                super();
            }
                });
            }
        }

        public void Buffer()
        {
            mBuffering = true;
            start();
        }

        public void Play()
        {
            if (mBuffering && !mBuffered)
            {
                return;
            }
            mPlaying = true;
            if (!mBuffered)
            {
                break MISSING_BLOCK_LABEL_52;
            }
            this;
            JVM INSTR monitorenter ;
            notify();
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception1;
            exception1;
            this;
            JVM INSTR monitorexit ;
            try
            {
                throw exception1;
            }
            catch (Exception exception)
            {
                Logger.e("Audio Player. Error notifying the thread", exception);
            }
            return;
            start();
            return;
        }

        public String getFileName()
        {
            return mFileName;
        }

        public void run()
        {
            if (!mBuffered)
            {
                BufferInternal();
            }
            if (!mBuffering) goto _L2; else goto _L1
_L1:
            this;
            JVM INSTR monitorenter ;
            wait();
            this;
            JVM INSTR monitorexit ;
_L2:
            mMP.start();
_L3:
            return;
            Exception exception1;
            exception1;
            this;
            JVM INSTR monitorexit ;
            try
            {
                throw exception1;
            }
            catch (Exception exception)
            {
                Logger.ee((new StringBuilder("Audio Player. Error playing the file ")).append(mFileName).toString(), exception);
                exception.printStackTrace();
            }
            if (mMP != null)
            {
                finalizePlay(mMP);
                return;
            }
              goto _L3
        }




        WazeAudioPlayer(String s, Long long1)
        {
            this$0 = NativeSoundManager.this;
            super();
            mBuffered = false;
            mBuffering = false;
            mMP = null;
            mFileName = s;
            mCallback = long1;
        }
    }

    private final class WazeAudioPlayer.CompletionListener
        implements android.media.MediaPlayer.OnCompletionListener
    {

        final WazeAudioPlayer this$1;

        public void onCompletion(MediaPlayer mediaplayer)
        {
            finalizePlay(mediaplayer);
        }

        private WazeAudioPlayer.CompletionListener()
        {
            this$1 = WazeAudioPlayer.this;
            super();
        }

        WazeAudioPlayer.CompletionListener(WazeAudioPlayer.CompletionListener completionlistener)
        {
            this();
        }
    }

    private final class WazeAudioPlayer.ErrorListener
        implements android.media.MediaPlayer.OnErrorListener
    {

        final WazeAudioPlayer this$1;

        public boolean onError(MediaPlayer mediaplayer, int i, int j)
        {
            finalizePlay(mediaplayer);
            return true;
        }

        private WazeAudioPlayer.ErrorListener()
        {
            this$1 = WazeAudioPlayer.this;
            super();
        }

        WazeAudioPlayer.ErrorListener(WazeAudioPlayer.ErrorListener errorlistener)
        {
            this();
        }
    }


    private static final String LOG_TAG = "Sound_Manager";
    public static final int ROUTING_STATE_SPEAKER = 1;
    public static final int ROUTING_STATE_SYSTEM = 0;
    private static final boolean SOUND_BUFFERING_ENABLED = false;
    public static final int VOLUME_MAX = 100;
    private static NativeSoundManager mInstance = null;
    final android.media.AudioManager.OnAudioFocusChangeListener mAfChangeListener = new android.media.AudioManager.OnAudioFocusChangeListener() {

        final NativeSoundManager this$0;

        public void onAudioFocusChange(int i)
        {
            if ((i & -1) > 0)
            {
                Logger.d_("Sound_Manager", (new StringBuilder("Audio focus is lost. State: ")).append(i).toString());
                return;
            }
            if ((i & 1) > 0)
            {
                Logger.d_("Sound_Manager", (new StringBuilder("Audio focus is gained. State: ")).append(i).toString());
                return;
            } else
            {
                Logger.d_("Sound_Manager", (new StringBuilder("Audio focus unknown state: ")).append(i).toString());
                return;
            }
        }

            
            {
                this$0 = NativeSoundManager.this;
                super();
            }
    };
    private boolean mAfGained;
    private AudioManager mAudioManager;
    private String mBTDeviceName;
    private WazeAudioPlayer mBufferedPlayer;
    private int mCurrentMPVolume;
    private WazeAudioPlayer mCurrentPlayer;
    private String mDefaultDeviceName;
    private volatile boolean mIsMuted;
    private ArrayList mPendingCallbackList;
    private ArrayList mPendingPlayersList;
    private volatile boolean mPlaying;
    private boolean mRouteToSpeaker;
    private int mRoutingState;
    private String mSpeakerDeviceName;
    private int mSystemMode;
    private volatile boolean mSystemSpeakerState;

    private NativeSoundManager()
    {
        mAudioManager = null;
        mSpeakerDeviceName = null;
        mBTDeviceName = null;
        mDefaultDeviceName = null;
        mPlaying = false;
        mBufferedPlayer = null;
        mCurrentPlayer = null;
        mCurrentMPVolume = 100;
        mRouteToSpeaker = false;
        mRoutingState = 0;
        mSystemMode = 0;
        mAfGained = false;
        mSystemSpeakerState = false;
        mIsMuted = false;
        InitSoundManagerNTV();
        mPendingPlayersList = new ArrayList();
        mPendingCallbackList = new ArrayList();
    }

    private void BufferNext()
    {
    }

    private native void InitSoundManagerNTV();

    private void PlayNext()
    {
        mIsMuted = shouldMuteNTV();
        if (mPlaying)
        {
            BufferNext();
            return;
        }
        if (mBufferedPlayer == null)
        {
            if (mPendingPlayersList.size() > 0)
            {
                mCurrentPlayer = new WazeAudioPlayer((String)mPendingPlayersList.remove(0), (Long)mPendingCallbackList.remove(0));
                requestAf();
                mCurrentPlayer.Play();
            } else
            {
                abandonAf();
            }
        } else
        {
            requestAf();
            mCurrentPlayer = mBufferedPlayer;
            mCurrentPlayer.Play();
            mBufferedPlayer = null;
        }
        BufferNext();
    }

    private native void SoundCallbackNTV(long l);

    private void abandonAf()
    {
        if (mAfGained)
        {
            int i = mAudioManager.abandonAudioFocus(mAfChangeListener);
            Logger.d_("Sound_Manager", (new StringBuilder("Audio focus is abandoned with state: ")).append(i).toString());
            setRoutingSystemState();
        }
        mAfGained = false;
    }

    public static void create()
    {
        getInstance();
        mInstance.requestConfig();
        mInstance.saveSystemState();
        mInstance.mAudioManager = (AudioManager)AppService.getAppContext().getSystemService("audio");
    }

    private AudioManager getAudioManager()
    {
        return (AudioManager)AppService.getAppContext().getSystemService("audio");
    }

    private float getExpVolumeValue()
    {
        return (float)((Math.pow(10D, (double)mCurrentMPVolume / 100D) - 1.0D) / (Math.pow(10D, 1.0D) - 1.0D));
    }

    public static NativeSoundManager getInstance()
    {
        if (mInstance == null)
        {
            mInstance = new NativeSoundManager();
        }
        return mInstance;
    }

    private boolean isInCall()
    {
        TelephonyManager telephonymanager = (TelephonyManager)AppService.getAppContext().getSystemService("phone");
        Logger.d_("Sound_Manager", (new StringBuilder("Current call state: ")).append(telephonymanager.getCallState()).toString());
        return telephonymanager.getCallState() == 2;
    }

    private boolean requestAf()
    {
        if (!mAfGained && !mIsMuted)
        {
            int i;
            if (mRouteToSpeaker)
            {
                i = mAudioManager.requestAudioFocus(mAfChangeListener, 0, 3);
            } else
            {
                i = mAudioManager.requestAudioFocus(mAfChangeListener, 3, 3);
            }
            if (i == 1)
            {
                Logger.d_("Sound_Manager", "Audio focus is granted");
                mAfGained = true;
            } else
            {
                Logger.w_("Sound_Manager", (new StringBuilder("Problem gaining the audio focus. Result: ")).append(i).toString());
                mAfGained = false;
            }
            setRouting();
        }
        return mAfGained;
    }

    private void requestConfig()
    {
        RunnableExecutor runnableexecutor = new RunnableExecutor(AppService.getInstance()) {

            final NativeSoundManager this$0;

            public void event()
            {
                NativeManager nativemanager = NativeManager.getInstance();
                mSpeakerDeviceName = nativemanager.getLanguageString(DisplayStrings.DS_SOUND_DEVICE_SPEAKER);
                mBTDeviceName = nativemanager.getLanguageString(DisplayStrings.DS_SOUND_DEVICE_BT);
                mDefaultDeviceName = nativemanager.getLanguageString(DisplayStrings.DS_SOUND_DEVICE_DEFAULT);
                ArrayList arraylist = new ArrayList();
                arraylist.add(0, SettingsSoundConstants.CFG_ITEM_ROUTE_2_SPEAKER);
                arraylist.add(1, SettingsSoundConstants.CFG_ITEM_PROMPTS_VOLUME);
                ConfigManager.getInstance().getConfig(NativeSoundManager.this, arraylist, "");
            }

            
            {
                this$0 = NativeSoundManager.this;
                super(executor);
            }
        };
        if (NativeManager.IsAppStarted())
        {
            runnableexecutor.run();
            return;
        } else
        {
            NativeManager.registerOnAppStartedEvent(runnableexecutor);
            return;
        }
    }

    private void saveSystemState()
    {
        AudioManager audiomanager = getAudioManager();
        mSystemMode = audiomanager.getMode();
        mSystemSpeakerState = audiomanager.isSpeakerphoneOn();
    }

    private void setRouting()
    {
        if (isInCall())
        {
            setRoutingSystemState();
            return;
        }
        if (mRouteToSpeaker)
        {
            setRoutingSpeakerState();
            return;
        } else
        {
            setRoutingSystemState();
            return;
        }
    }

    private void setRoutingSpeakerState()
    {
        if (mRoutingState != 1)
        {
            getAudioManager().setSpeakerphoneOn(true);
            mRoutingState = 1;
        }
    }

    private void setRoutingSystemState()
    {
        if (mRoutingState != 0)
        {
            AudioManager audiomanager = getAudioManager();
            audiomanager.setMode(mSystemMode);
            audiomanager.setSpeakerphoneOn(false);
            mRoutingState = 0;
        }
    }

    private native boolean shouldMuteNTV();

    public void LoadSoundData(byte abyte0[])
    {
    }

    public void PlayBuffer(byte abyte0[])
    {
        try
        {
            File file = File.createTempFile("sound", null, new File((new StringBuilder(String.valueOf(ResManager.mAppDir))).append("sound/").toString()));
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            fileoutputstream.write(abyte0);
            fileoutputstream.close();
            mPendingPlayersList.add(file.getAbsolutePath());
            PlayNext();
            return;
        }
        catch (Exception exception)
        {
            Logger.ee("Error playing sound buffer", exception);
            exception.printStackTrace();
            return;
        }
    }

    public void PlayFile(byte abyte0[], long l)
    {
        String s = new String(abyte0, 0, abyte0.length);
        new File(s);
        mPendingPlayersList.add(s);
        mPendingCallbackList.add(Long.valueOf(l));
        PlayNext();
    }

    public String getBTDeviceName()
    {
        return mBTDeviceName;
    }

    public String getDefaultDeviceName()
    {
        return mDefaultDeviceName;
    }

    public String getSpeakerDeviceName()
    {
        return mSpeakerDeviceName;
    }

    public void routeSoundToBT(boolean flag)
    {
        AudioManager audiomanager = (AudioManager)AppService.getAppContext().getSystemService("audio");
        if (flag)
        {
            audiomanager.setMode(0);
            audiomanager.setBluetoothA2dpOn(true);
            if (!audiomanager.isBluetoothA2dpOn())
            {
                audiomanager.setBluetoothScoOn(true);
            }
            return;
        } else
        {
            audiomanager.setBluetoothA2dpOn(false);
            audiomanager.setBluetoothScoOn(false);
            return;
        }
    }

    public void routeSoundToSpeaker(boolean flag)
    {
        mRouteToSpeaker = flag;
    }

    public void setDevice(String s)
    {
        Logger.d_("Sound_Manager", (new StringBuilder("Trying to set sound device: ")).append(s).toString());
        if (s.equals(mSpeakerDeviceName))
        {
            routeSoundToSpeaker(true);
            return;
        }
        if (s.equals(mDefaultDeviceName))
        {
            routeSoundToSpeaker(false);
            return;
        } else
        {
            Logger.ee((new StringBuilder("Unrecognized sound device value: ")).append(s).toString());
            return;
        }
    }

    public void setVolume(int i)
    {
        Logger.d_("Sound_Manager", (new StringBuilder("Setting media player volume to: ")).append(i).toString());
        mCurrentMPVolume = i;
    }

    public void shutdown()
    {
        Logger.d_("Sound_Manager", "Shutting down sound manager. Restoring startup state.");
        setRoutingSystemState();
    }

    public void updateConfigItems(List list)
    {
        routeSoundToSpeaker(((ConfigItem)list.get(0)).getValue().equals("yes"));
        setVolume(Integer.valueOf(((ConfigItem)list.get(1)).getValue()).intValue());
    }










}
