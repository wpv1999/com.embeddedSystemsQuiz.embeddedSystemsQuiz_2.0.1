.class public Lcom/google/android/gms/internal/zzlh$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private final zzcwp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcwq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcwr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlh$zzb;->zzcwp:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlh$zzb;->zzcwq:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlh$zzb;->zzcwr:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlh$zzb;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlh$zzb;->zzcwq:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzlh$zzb;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlh$zzb;->zzcwp:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzlh$zzb;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlh$zzb;->zzcwr:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzlh$zzb;
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlh$zzb;->zzcwp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlh$zzb;->zzcwr:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlh$zzb;->zzcwq:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v0, p2, v2

    if-gez v0, :cond_3e

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlh$zzb;->zzcwp:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlh$zzb;->zzcwr:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlh$zzb;->zzcwq:Ljava/util/List;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0

    :cond_3e
    cmpl-double v0, v2, p2

    if-nez v0, :cond_46

    cmpg-double v0, p4, v4

    if-ltz v0, :cond_26

    :cond_46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public zzwi()Lcom/google/android/gms/internal/zzlh;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzlh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzlh;-><init>(Lcom/google/android/gms/internal/zzlh$zzb;Lcom/google/android/gms/internal/zzlh$1;)V

    return-object v0
.end method
