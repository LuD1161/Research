.class public Lu1/c;
.super LA1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lu1/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu1/m;

    invoke-direct {v0}, Lu1/m;-><init>()V

    sput-object v0, Lu1/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, LA1/a;-><init>()V

    iput-object p1, p0, Lu1/c;->e:Ljava/lang/String;

    iput p2, p0, Lu1/c;->f:I

    iput-wide p3, p0, Lu1/c;->g:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, LA1/a;-><init>()V

    iput-object p1, p0, Lu1/c;->e:Ljava/lang/String;

    iput-wide p2, p0, Lu1/c;->g:J

    const/4 p1, -0x1

    iput p1, p0, Lu1/c;->f:I

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu1/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 4

    iget-wide v0, p0, Lu1/c;->g:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget v0, p0, Lu1/c;->f:I

    int-to-long v0, v0

    :cond_0
    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lu1/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lu1/c;

    invoke-virtual {p0}, Lu1/c;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lu1/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lu1/c;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lu1/c;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lu1/c;->e()J

    move-result-wide v2

    invoke-virtual {p1}, Lu1/c;->e()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Lu1/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lu1/c;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lz1/n;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lz1/n;->c(Ljava/lang/Object;)Lz1/n$a;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0}, Lu1/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lz1/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lz1/n$a;

    invoke-virtual {p0}, Lu1/c;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lz1/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lz1/n$a;

    invoke-virtual {v0}, Lz1/n$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lu1/c;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, LA1/c;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget v1, p0, Lu1/c;->f:I

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lu1/c;->e()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, LA1/c;->k(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
