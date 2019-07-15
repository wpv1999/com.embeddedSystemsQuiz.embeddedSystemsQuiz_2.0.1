.class Lcom/google/android/gms/internal/zzcz$zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzcz$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzako:Ljava/lang/Object;

.field private zzaoz:Z

.field private zzawc:Z

.field private zzawd:Z

.field private zzawe:Ljava/lang/Runnable;

.field private zzawf:J


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzako:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawc:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawd:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->mListeners:Ljava/util/List;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzaoz:Z

    return-void
.end method

.method private setActivity(Landroid/app/Activity;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.gms.ads"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcz$zza;->mActivity:Landroid/app/Activity;

    :cond_15
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcz$zza;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzako:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcz$zza;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawc:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcz$zza;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawc:Z

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcz$zza;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawd:Z

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcz$zza;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->mListeners:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->mActivity:Landroid/app/Activity;

    :cond_14
    monitor-exit v1

    goto :goto_8

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcz$zza;->setActivity(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawe:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawe:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzcz$zza$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcz$zza$1;-><init>(Lcom/google/android/gms/internal/zzcz$zza;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawe:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawf:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcz$zza;->setActivity(Landroid/app/Activity;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawd:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawc:Z

    if-nez v2, :cond_c

    move v0, v1

    :cond_c
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawc:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawe:Ljava/lang/Runnable;

    if-eqz v1, :cond_19

    sget-object v1, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawe:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzako:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_3f

    :try_start_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcz$zzb;
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_3c

    const/4 v3, 0x1

    :try_start_31
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzcz$zzb;->zzk(Z)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    goto :goto_24

    :catch_35
    move-exception v0

    :try_start_36
    const-string v3, "OnForegroundStateChangedListener threw exception."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24

    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3c

    throw v0

    :cond_3f
    :try_start_3f
    const-string v0, "App is still foreground."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    :cond_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_3c

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcz$zza;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public zza(Landroid/app/Application;Landroid/content/Context;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzaoz:Z

    if-nez v0, :cond_24

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_11

    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcz$zza;->setActivity(Landroid/app/Activity;)V

    :cond_11
    iput-object p2, p0, Lcom/google/android/gms/internal/zzcz$zza;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbga:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzawf:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->zzaoz:Z

    :cond_24
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzcz$zzb;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz$zza;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
