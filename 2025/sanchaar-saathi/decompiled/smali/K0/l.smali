.class public interface abstract LK0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK0/l$a;
    }
.end annotation


# static fields
.field public static final a:LK0/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LK0/l$a;->a:LK0/l$a;

    sput-object v0, LK0/l;->a:LK0/l$a;

    return-void
.end method

.method public static b()LK0/l;
    .locals 1

    sget-object v0, LK0/l;->a:LK0/l$a;

    invoke-virtual {v0}, LK0/l$a;->a()LK0/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;)LK0/k;
.end method
