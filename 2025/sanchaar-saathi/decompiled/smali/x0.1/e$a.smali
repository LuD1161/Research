.class public final Lx0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx0/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lx0/f;)Lx0/e;
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lx0/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lx0/e;-><init>(Lx0/f;Lv3/g;)V

    return-object v0
.end method
