.class public final LQ1/b;
.super LA1/a;
.source "SourceFile"

# interfaces
.implements Lv1/j;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LQ1/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public f:I

.field public g:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LQ1/c;

    invoke-direct {v0}, LQ1/c;-><init>()V

    sput-object v0, LQ1/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, LA1/a;-><init>()V

    iput p1, p0, LQ1/b;->e:I

    iput p2, p0, LQ1/b;->f:I

    iput-object p3, p0, LQ1/b;->g:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget v0, p0, LQ1/b;->f:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->j:Lcom/google/android/gms/common/api/Status;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->n:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, LQ1/b;->e:I

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget v2, p0, LQ1/b;->f:I

    invoke-static {p1, v0, v2}, LA1/c;->i(Landroid/os/Parcel;II)V

    iget-object v0, p0, LQ1/b;->g:Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p1, v3, v0, p2, v2}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v1}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
