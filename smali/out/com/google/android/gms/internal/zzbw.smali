.class public Lcom/google/android/gms/internal/zzbw;
.super Lcom/google/android/gms/internal/zzby;


# instance fields
.field private final zzajh:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;IILandroid/view/View;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzby;-><init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbw;->zzajh:Landroid/view/View;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbw;->zzajh:Landroid/view/View;

    if-eqz v0, :cond_2f

    new-instance v1, Lcom/google/android/gms/internal/zzbf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbw;->zzajk:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbw;->zzajh:Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbf;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbw;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    monitor-enter v2

    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbw;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    new-instance v3, Lcom/google/android/gms/internal/zzaf$zza$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzaf$zza$zzb;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzeu:Lcom/google/android/gms/internal/zzaf$zza$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbw;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzeu:Lcom/google/android/gms/internal/zzaf$zza$zzb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbf;->zzaiv:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaf$zza$zzb;->zzfn:Ljava/lang/Long;

    monitor-exit v2

    :cond_2f
    return-void

    :catchall_30
    move-exception v0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_30

    throw v0
.end method
