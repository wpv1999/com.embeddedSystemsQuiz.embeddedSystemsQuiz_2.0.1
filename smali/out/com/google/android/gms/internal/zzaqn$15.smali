.class final Lcom/google/android/gms/internal/zzaqn$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzapl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaqn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaos;Lcom/google/android/gms/internal/zzaqo;)Lcom/google/android/gms/internal/zzapk;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzaos;",
            "Lcom/google/android/gms/internal/zzaqo",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzapk",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaqo;->bB()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaos;->zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapk;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzaqn$15$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzaqn$15$1;-><init>(Lcom/google/android/gms/internal/zzaqn$15;Lcom/google/android/gms/internal/zzapk;)V

    goto :goto_9
.end method
