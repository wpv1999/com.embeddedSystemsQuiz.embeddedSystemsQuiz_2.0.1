.class public Lcom/google/android/gms/internal/zzbv;
.super Lcom/google/android/gms/internal/zzby;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzby;-><init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V

    return-void
.end method


# virtual methods
.method protected zzdh()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbv;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzek:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbv;->zzajk:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbv;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbc;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbv;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    monitor-enter v1

    if-ne v0, v4, :cond_32

    :try_start_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbv;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzek:Ljava/lang/Integer;

    :goto_30
    monitor-exit v1

    return-void

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbv;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzek:Ljava/lang/Integer;

    goto :goto_30

    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_3c

    throw v0
.end method