.class final Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/common/api/Scope;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/android/gms/common/api/Scope;

    check-cast p2, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount$1;->zza(Lcom/google/android/gms/common/api/Scope;Lcom/google/android/gms/common/api/Scope;)I

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/common/api/Scope;Lcom/google/android/gms/common/api/Scope;)I
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Scope;->zzari()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Scope;->zzari()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
