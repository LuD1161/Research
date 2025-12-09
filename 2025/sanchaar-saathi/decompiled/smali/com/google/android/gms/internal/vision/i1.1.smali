.class public final Lcom/google/android/gms/internal/vision/i1;
.super LA1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/vision/i1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:I

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/L0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/L0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/i1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LA1/a;-><init>()V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, LA1/a;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/vision/i1;->e:I

    .line 4
    iput-boolean p2, p0, Lcom/google/android/gms/internal/vision/i1;->f:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/vision/i1;->e:I

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/i1;->f:Z

    invoke-static {p1, v0, v1}, LA1/c;->c(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
