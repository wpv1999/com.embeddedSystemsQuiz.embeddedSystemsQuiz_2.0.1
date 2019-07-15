.class public Lcom/google/android/gms/internal/zzbo;
.super Lcom/google/android/gms/internal/zzby;


# static fields
.field private static final zzaix:Ljava/lang/Object;

.field private static volatile zzajc:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbo;->zzajc:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbo;->zzaix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzby;-><init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V

    return-void
.end method


# virtual methods
.method protected zzdh()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbo;->zzajc:Ljava/lang/Long;

    if-nez v0, :cond_1a

    sget-object v1, Lcom/google/android/gms/internal/zzbo;->zzaix:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzbo;->zzajc:Ljava/lang/Long;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzajk:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sput-object v0, Lcom/google/android/gms/internal/zzbo;->zzajc:Ljava/lang/Long;

    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_25

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbo;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    monitor-enter v1

    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbo;->zzajc:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzdu:Ljava/lang/Long;

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_28

    return-void

    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method
