.class public abstract Lcom/google/android/gms/internal/zzby;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected final className:Ljava/lang/String;

.field protected final zzagd:Lcom/google/android/gms/internal/zzbc;

.field protected final zzajb:Lcom/google/android/gms/internal/zzaf$zza;

.field protected final zzaji:Ljava/lang/String;

.field protected zzajk:Ljava/lang/reflect/Method;

.field protected final zzajo:I

.field protected final zzajp:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzby;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzby;->zzagd:Lcom/google/android/gms/internal/zzbc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzby;->className:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzby;->zzaji:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzby;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    iput p5, p0, Lcom/google/android/gms/internal/zzby;->zzajo:I

    iput p6, p0, Lcom/google/android/gms/internal/zzby;->zzajp:I

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzby;->zzdo()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzdh()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public zzdo()Ljava/lang/Void;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzby;->zzagd:Lcom/google/android/gms/internal/zzbc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzby;->className:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzby;->zzaji:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzbc;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzby;->zzajk:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzby;->zzajk:Ljava/lang/reflect/Method;

    if-nez v2, :cond_16

    :cond_15
    :goto_15
    return-object v5

    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzby;->zzdh()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzby;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbc;->zzct()Lcom/google/android/gms/internal/zzap;

    move-result-object v2

    if-eqz v2, :cond_15

    iget v3, p0, Lcom/google/android/gms/internal/zzby;->zzajo:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_15

    iget v3, p0, Lcom/google/android/gms/internal/zzby;->zzajp:I

    iget v4, p0, Lcom/google/android/gms/internal/zzby;->zzajo:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v0, v6, v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/gms/internal/zzap;->zza(IIJ)V
    :try_end_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_37} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_37} :catch_3a

    goto :goto_15

    :catch_38
    move-exception v0

    goto :goto_15

    :catch_3a
    move-exception v0

    goto :goto_15
.end method
