.class final Lcom/google/android/gms/internal/zzgt$2;
.super Lcom/google/android/gms/internal/zzhc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgt;->zzaf(I)Lcom/google/android/gms/internal/zzhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbwk:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzgt$2;->zzbwk:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhc$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzok()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzgt$2;->zzbwk:I

    return v0
.end method
