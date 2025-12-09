.class public final LO3/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LO3/e;
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
    invoke-direct {p0}, LO3/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)LO3/e;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LO3/e;

    invoke-static {p1}, LO3/B;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, LO3/e;-><init>([B)V

    invoke-virtual {v0, p1}, LO3/e;->B(Ljava/lang/String;)V

    return-object v0
.end method
