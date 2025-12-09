.class public final Lz1/G;
.super LA1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz1/G;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:Landroid/os/IBinder;

.field public final g:Lu1/a;

.field public final h:Z

.field public final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/H;

    invoke-direct {v0}, Lz1/H;-><init>()V

    sput-object v0, Lz1/G;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lu1/a;ZZ)V
    .locals 0

    invoke-direct {p0}, LA1/a;-><init>()V

    iput p1, p0, Lz1/G;->e:I

    iput-object p2, p0, Lz1/G;->f:Landroid/os/IBinder;

    iput-object p3, p0, Lz1/G;->g:Lu1/a;

    iput-boolean p4, p0, Lz1/G;->h:Z

    iput-boolean p5, p0, Lz1/G;->i:Z

    return-void
.end method


# virtual methods
.method public final d()Lz1/j;
    .locals 1

    iget-object v0, p0, Lz1/G;->f:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lz1/j$a;->I(Landroid/os/IBinder;)Lz1/j;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lu1/a;
    .locals 1

    iget-object v0, p0, Lz1/G;->g:Lu1/a;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lz1/G;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lz1/G;

    iget-object v2, p0, Lz1/G;->g:Lu1/a;

    iget-object v3, p1, Lz1/G;->g:Lu1/a;

    invoke-virtual {v2, v3}, Lu1/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lz1/G;->d()Lz1/j;

    move-result-object v2

    invoke-virtual {p1}, Lz1/G;->d()Lz1/j;

    move-result-object p1

    invoke-static {v2, p1}, Lz1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lz1/G;->e:I

    invoke-static {p1, v1, v2}, LA1/c;->i(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lz1/G;->f:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LA1/c;->h(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lz1/G;->g:Lu1/a;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    iget-boolean v1, p0, Lz1/G;->h:Z

    invoke-static {p1, p2, v1}, LA1/c;->c(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x5

    iget-boolean v1, p0, Lz1/G;->i:Z

    invoke-static {p1, p2, v1}, LA1/c;->c(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
