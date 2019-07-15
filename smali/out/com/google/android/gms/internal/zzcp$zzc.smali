.class public Lcom/google/android/gms/internal/zzcp$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzatx:Lcom/google/android/gms/internal/zzko;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/zzko;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcp$zzc;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcp$zzc;->zzatx:Lcom/google/android/gms/internal/zzko;

    return-void
.end method


# virtual methods
.method public zzir()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp$zzc;->mView:Landroid/view/View;

    return-object v0
.end method

.method public zzis()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp$zzc;->zzatx:Lcom/google/android/gms/internal/zzko;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp$zzc;->mView:Landroid/view/View;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public zzit()Lcom/google/android/gms/internal/zzcw;
    .registers 1

    return-object p0
.end method
