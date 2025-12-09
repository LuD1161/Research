.class public LX2/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LX2/g;


# direct methods
.method public constructor <init>(LX2/g;)V
    .locals 0

    iput-object p1, p0, LX2/g$a;->c:LX2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 0

    iget-object p1, p0, LX2/g$a;->c:LX2/g;

    invoke-static {p1}, LX2/g;->a(LX2/g;)LQ2/a;

    return-void
.end method
