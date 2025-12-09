.class public Lz1/g;
.super LA1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz1/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:[Lcom/google/android/gms/common/api/Scope;

.field public static final t:[Lu1/c;


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I

.field public h:Ljava/lang/String;

.field public i:Landroid/os/IBinder;

.field public j:[Lcom/google/android/gms/common/api/Scope;

.field public k:Landroid/os/Bundle;

.field public l:Landroid/accounts/Account;

.field public m:[Lu1/c;

.field public n:[Lu1/c;

.field public final o:Z

.field public final p:I

.field public q:Z

.field public final r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz1/Y;

    invoke-direct {v0}, Lz1/Y;-><init>()V

    sput-object v0, Lz1/g;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/api/Scope;

    sput-object v1, Lz1/g;->s:[Lcom/google/android/gms/common/api/Scope;

    new-array v0, v0, [Lu1/c;

    sput-object v0, Lz1/g;->t:[Lu1/c;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lu1/c;[Lu1/c;ZIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, LA1/a;-><init>()V

    if-nez p6, :cond_0

    sget-object p6, Lz1/g;->s:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    if-nez p7, :cond_1

    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :cond_1
    if-nez p9, :cond_2

    sget-object p9, Lz1/g;->t:[Lu1/c;

    :cond_2
    if-nez p10, :cond_3

    sget-object p10, Lz1/g;->t:[Lu1/c;

    :cond_3
    iput p1, p0, Lz1/g;->e:I

    iput p2, p0, Lz1/g;->f:I

    iput p3, p0, Lz1/g;->g:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iput-object p2, p0, Lz1/g;->h:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput-object p4, p0, Lz1/g;->h:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_6

    if-eqz p5, :cond_5

    invoke-static {p5}, Lz1/j$a;->I(Landroid/os/IBinder;)Lz1/j;

    move-result-object p1

    invoke-static {p1}, Lz1/a;->J(Lz1/j;)Landroid/accounts/Account;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lz1/g;->l:Landroid/accounts/Account;

    goto :goto_2

    :cond_6
    iput-object p5, p0, Lz1/g;->i:Landroid/os/IBinder;

    iput-object p8, p0, Lz1/g;->l:Landroid/accounts/Account;

    :goto_2
    iput-object p6, p0, Lz1/g;->j:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lz1/g;->k:Landroid/os/Bundle;

    iput-object p9, p0, Lz1/g;->m:[Lu1/c;

    iput-object p10, p0, Lz1/g;->n:[Lu1/c;

    iput-boolean p11, p0, Lz1/g;->o:Z

    iput p12, p0, Lz1/g;->p:I

    iput-boolean p13, p0, Lz1/g;->q:Z

    iput-object p14, p0, Lz1/g;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz1/g;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lz1/Y;->a(Lz1/g;Landroid/os/Parcel;I)V

    return-void
.end method
