.class public final Lc0/z;
.super Lc0/v;
.source "SourceFile"


# static fields
.field public static final b:Lc0/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc0/z;

    invoke-direct {v0}, Lc0/z;-><init>()V

    sput-object v0, Lc0/z;->b:Lc0/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc0/v;-><init>(ILv3/g;)V

    return-void
.end method
