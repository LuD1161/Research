.class public Lz1/q;
.super LA1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz1/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:I

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/M;

    invoke-direct {v0}, Lz1/M;-><init>()V

    sput-object v0, Lz1/q;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZII)V
    .locals 0

    invoke-direct {p0}, LA1/a;-><init>()V

    iput p1, p0, Lz1/q;->e:I

    iput-boolean p2, p0, Lz1/q;->f:Z

    iput-boolean p3, p0, Lz1/q;->g:Z

    iput p4, p0, Lz1/q;->h:I

    iput p5, p0, Lz1/q;->i:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lz1/q;->h:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lz1/q;->i:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lz1/q;->f:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lz1/q;->g:Z

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lz1/q;->e:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lz1/q;->i()I

    move-result v1

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lz1/q;->g()Z

    move-result v1

    invoke-static {p1, v0, v1}, LA1/c;->c(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lz1/q;->h()Z

    move-result v1

    invoke-static {p1, v0, v1}, LA1/c;->c(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lz1/q;->d()I

    move-result v1

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lz1/q;->e()I

    move-result v1

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
