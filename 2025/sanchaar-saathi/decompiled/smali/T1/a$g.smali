.class public LT1/a$g;
.super LA1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LT1/a$g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:D

.field public f:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LT1/l;

    invoke-direct {v0}, LT1/l;-><init>()V

    sput-object v0, LT1/a$g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, LA1/a;-><init>()V

    iput-wide p1, p0, LT1/a$g;->e:D

    iput-wide p3, p0, LT1/a$g;->f:D

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget-wide v1, p0, LT1/a$g;->e:D

    invoke-static {p1, v0, v1, v2}, LA1/c;->g(Landroid/os/Parcel;ID)V

    const/4 v0, 0x3

    iget-wide v1, p0, LT1/a$g;->f:D

    invoke-static {p1, v0, v1, v2}, LA1/c;->g(Landroid/os/Parcel;ID)V

    invoke-static {p1, p2}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
