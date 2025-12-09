.class public Lv1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv1/e$a$a;
    }
.end annotation


# static fields
.field public static final c:Lv1/e$a;


# instance fields
.field public final a:Lw1/l;

.field public final b:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv1/e$a$a;

    invoke-direct {v0}, Lv1/e$a$a;-><init>()V

    invoke-virtual {v0}, Lv1/e$a$a;->a()Lv1/e$a;

    move-result-object v0

    sput-object v0, Lv1/e$a;->c:Lv1/e$a;

    return-void
.end method

.method public constructor <init>(Lw1/l;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/e$a;->a:Lw1/l;

    iput-object p3, p0, Lv1/e$a;->b:Landroid/os/Looper;

    return-void
.end method

.method public synthetic constructor <init>(Lw1/l;Landroid/accounts/Account;Landroid/os/Looper;[B)V
    .locals 0

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lv1/e$a;-><init>(Lw1/l;Landroid/accounts/Account;Landroid/os/Looper;)V

    return-void
.end method
