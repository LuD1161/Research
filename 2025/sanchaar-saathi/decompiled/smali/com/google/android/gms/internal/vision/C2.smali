.class public final Lcom/google/android/gms/internal/vision/C2;
.super LA1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/vision/C2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/E2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/E2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/C2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LA1/a;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIJI)V
    .locals 0

    .line 2
    invoke-direct {p0}, LA1/a;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/vision/C2;->e:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/vision/C2;->f:I

    .line 5
    iput p3, p0, Lcom/google/android/gms/internal/vision/C2;->g:I

    .line 6
    iput-wide p4, p0, Lcom/google/android/gms/internal/vision/C2;->h:J

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/vision/C2;->i:I

    return-void
.end method

.method public static d(LS1/c;)Lcom/google/android/gms/internal/vision/C2;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/vision/C2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/C2;-><init>()V

    invoke-virtual {p0}, LS1/c;->c()LS1/c$b;

    move-result-object v1

    invoke-virtual {v1}, LS1/c$b;->f()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/vision/C2;->e:I

    invoke-virtual {p0}, LS1/c;->c()LS1/c$b;

    move-result-object v1

    invoke-virtual {v1}, LS1/c$b;->b()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/vision/C2;->f:I

    invoke-virtual {p0}, LS1/c;->c()LS1/c$b;

    move-result-object v1

    invoke-virtual {v1}, LS1/c$b;->d()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/vision/C2;->i:I

    invoke-virtual {p0}, LS1/c;->c()LS1/c$b;

    move-result-object v1

    invoke-virtual {v1}, LS1/c$b;->c()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/vision/C2;->g:I

    invoke-virtual {p0}, LS1/c;->c()LS1/c$b;

    move-result-object p0

    invoke-virtual {p0}, LS1/c$b;->e()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/vision/C2;->h:J

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/vision/C2;->e:I

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/vision/C2;->f:I

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/vision/C2;->g:I

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/gms/internal/vision/C2;->h:J

    invoke-static {p1, v0, v1, v2}, LA1/c;->k(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/vision/C2;->i:I

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
