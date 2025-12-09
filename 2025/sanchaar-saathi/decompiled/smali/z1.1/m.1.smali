.class public Lz1/m;
.super LA1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz1/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:J

.field public final i:J

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/D;

    invoke-direct {v0}, Lz1/D;-><init>()V

    sput-object v0, Lz1/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, LA1/a;-><init>()V

    iput p1, p0, Lz1/m;->e:I

    iput p2, p0, Lz1/m;->f:I

    iput p3, p0, Lz1/m;->g:I

    iput-wide p4, p0, Lz1/m;->h:J

    iput-wide p6, p0, Lz1/m;->i:J

    iput-object p8, p0, Lz1/m;->j:Ljava/lang/String;

    iput-object p9, p0, Lz1/m;->k:Ljava/lang/String;

    iput p10, p0, Lz1/m;->l:I

    iput p11, p0, Lz1/m;->m:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget p2, p0, Lz1/m;->e:I

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, p2}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 p2, 0x2

    iget v1, p0, Lz1/m;->f:I

    invoke-static {p1, p2, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 p2, 0x3

    iget v1, p0, Lz1/m;->g:I

    invoke-static {p1, p2, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 p2, 0x4

    iget-wide v1, p0, Lz1/m;->h:J

    invoke-static {p1, p2, v1, v2}, LA1/c;->k(Landroid/os/Parcel;IJ)V

    const/4 p2, 0x5

    iget-wide v1, p0, Lz1/m;->i:J

    invoke-static {p1, p2, v1, v2}, LA1/c;->k(Landroid/os/Parcel;IJ)V

    iget-object p2, p0, Lz1/m;->j:Ljava/lang/String;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2}, LA1/c;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x7

    iget-object v1, p0, Lz1/m;->k:Ljava/lang/String;

    invoke-static {p1, p2, v1, v2}, LA1/c;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x8

    iget v1, p0, Lz1/m;->l:I

    invoke-static {p1, p2, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/16 p2, 0x9

    iget v1, p0, Lz1/m;->m:I

    invoke-static {p1, p2, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
