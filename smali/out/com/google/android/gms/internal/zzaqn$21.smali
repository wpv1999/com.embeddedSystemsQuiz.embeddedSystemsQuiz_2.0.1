.class final Lcom/google/android/gms/internal/zzaqn$21;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzapl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaqn;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzapk;)Lcom/google/android/gms/internal/zzapl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic brd:Lcom/google/android/gms/internal/zzapk;

.field final synthetic bre:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/google/android/gms/internal/zzapk;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqn$21;->bre:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaqn$21;->brd:Lcom/google/android/gms/internal/zzapk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqn$21;->bre:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqn$21;->brd:Lcom/google/android/gms/internal/zzapk;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Factory[type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",adapter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqn$21;->bre:Ljava/lang/Class;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqn$21;->brd:Lcom/google/android/gms/internal/zzapk;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
