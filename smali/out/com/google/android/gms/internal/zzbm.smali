.class public Lcom/google/android/gms/internal/zzbm;
.super Lcom/google/android/gms/internal/zzby;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzby;-><init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V

    return-void
.end method

.method private zzdm()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbm;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbm;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbm;->zzajk:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbm;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbc;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzaf$zza;->zzew:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private zzdn()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbm;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbc;->zzdc()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "E1"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbm;->zzt(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    :try_start_e
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbe;->zzr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbm;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    monitor-enter v2
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_3d

    :try_start_1f
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbm;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    iput-object v1, v3, Lcom/google/android/gms/internal/zzaf$zza;->zzew:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbm;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzaf$zza;->zzey:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbm;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzex:Ljava/lang/Integer;

    monitor-exit v2

    goto :goto_d

    :catchall_3a
    move-exception v0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception v0

    const-string v0, "E"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbm;->zzt(Ljava/lang/String;)V

    goto :goto_d

    :cond_44
    :try_start_44
    const-string v0, "E"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbm;->zzt(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_3d

    goto :goto_d
.end method

.method private zzt(Ljava/lang/String;)V
    .registers 2

    return-void
.end method


# virtual methods
.method protected zzdh()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbm;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbc;->zzcr()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbm;->zzdn()V

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbm;->zzdm()V

    goto :goto_b
.end method
