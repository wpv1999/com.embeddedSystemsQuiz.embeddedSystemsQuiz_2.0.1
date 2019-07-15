.class public Lcom/google/android/gms/internal/zzbi;
.super Lcom/google/android/gms/internal/zzby;


# static fields
.field private static final zzaix:Ljava/lang/Object;

.field private static volatile zzaiy:Lcom/google/android/gms/internal/zzam;


# instance fields
.field private zzaiz:Z

.field private zzaja:Lcom/google/android/gms/internal/zzad$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbi;->zzaix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;IIZLcom/google/android/gms/internal/zzad$zza;)V
    .registers 10

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzby;-><init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbi;->zzaiz:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzaja:Lcom/google/android/gms/internal/zzad$zza;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzbi;->zzaiz:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbi;->zzaja:Lcom/google/android/gms/internal/zzad$zza;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzad$zza;)Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbi;->zzb(Lcom/google/android/gms/internal/zzad$zza;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbe;->zzs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    if-eqz p0, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Lcom/google/android/gms/internal/zzad$zzb;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Lcom/google/android/gms/internal/zzad$zzb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzad$zzb;->zzcm:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_f
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzad$zza;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Lcom/google/android/gms/internal/zzad$zzc;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Lcom/google/android/gms/internal/zzad$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzad$zzc;->zzcn:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbe;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Lcom/google/android/gms/internal/zzad$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzad$zzc;->zzcn:Ljava/lang/String;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private zzdi()Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzam;->zzcn:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbe;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzam;->zzcn:Ljava/lang/String;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private zzdj()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzaja:Lcom/google/android/gms/internal/zzad$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbi;->zzb(Lcom/google/android/gms/internal/zzad$zza;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbe;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x4

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzaja:Lcom/google/android/gms/internal/zzad$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzad$zza;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbi;->zzdk()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    goto :goto_d

    :cond_22
    const/4 v0, 0x2

    goto :goto_d
.end method

.method private zzdk()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbc;->zzcu()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbil:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbim:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbij:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private zzdl()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbc;->zzcw()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbc;->zzcw()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbc;->zzcv()Lcom/google/android/gms/internal/zzaf$zza;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzcn:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzcn:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1f} :catch_20
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_1f} :catch_23

    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    :cond_21
    :goto_21
    const/4 v0, 0x0

    goto :goto_1f

    :catch_23
    move-exception v0

    goto :goto_21
.end method

.method private zze(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbi;->zzajk:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbi;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbc;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v1

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzbi;->zzaiz:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    if-ne p1, v6, :cond_48

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzam;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzam;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    sget-object v0, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzam;->zzcn:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbe;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    sget-object v0, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzam;->zzcn:Ljava/lang/String;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_44
    packed-switch p1, :pswitch_data_64

    :cond_47
    :goto_47
    return-void

    :cond_48
    move v0, v1

    goto :goto_1b

    :pswitch_4a
    sget-object v0, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbi;->zzaja:Lcom/google/android/gms/internal/zzad$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Lcom/google/android/gms/internal/zzad$zzc;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzad$zzc;->zzcn:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzam;->zzcn:Ljava/lang/String;

    goto :goto_47

    :pswitch_55
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbi;->zzdl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbe;->zzs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    sget-object v1, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzam;->zzcn:Ljava/lang/String;

    goto :goto_47

    :pswitch_data_64
    .packed-switch 0x3
        :pswitch_55
        :pswitch_4a
    .end packed-switch
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

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbi;->zzdi()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v1, Lcom/google/android/gms/internal/zzbi;->zzaix:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbi;->zzdj()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_15

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbi;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbc;->zzcz()V

    :cond_15
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbi;->zze(I)V

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_52

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbi;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    monitor-enter v1

    :try_start_1c
    sget-object v0, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzam;->zzcn:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzcn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzam;->zzyi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzea:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzam;->zzcp:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzcp:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbi;->zzaiz:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzam;->zzcq:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzcq:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbi;->zzaiy:Lcom/google/android/gms/internal/zzam;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzam;->zzcr:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzcr:Ljava/lang/String;

    :cond_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_1c .. :try_end_51} :catchall_55

    return-void

    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0

    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0
.end method
