.class public final synthetic LH2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR1/c;


# instance fields
.field public final synthetic a:LY2/j$d;


# direct methods
.method public synthetic constructor <init>(LY2/j$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH2/i;->a:LY2/j$d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, LH2/i;->a:LY2/j$d;

    invoke-static {v0, p1}, LH2/l;->d(LY2/j$d;Ljava/lang/Exception;)V

    return-void
.end method
