.class public abstract LP1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv1/a$g;

.field public static final b:Lv1/a$g;

.field public static final c:Lv1/a$a;

.field public static final d:Lv1/a$a;

.field public static final e:Lcom/google/android/gms/common/api/Scope;

.field public static final f:Lcom/google/android/gms/common/api/Scope;

.field public static final g:Lv1/a;

.field public static final h:Lv1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lv1/a$g;

    invoke-direct {v0}, Lv1/a$g;-><init>()V

    sput-object v0, LP1/d;->a:Lv1/a$g;

    new-instance v1, Lv1/a$g;

    invoke-direct {v1}, Lv1/a$g;-><init>()V

    sput-object v1, LP1/d;->b:Lv1/a$g;

    new-instance v2, LP1/b;

    invoke-direct {v2}, LP1/b;-><init>()V

    sput-object v2, LP1/d;->c:Lv1/a$a;

    new-instance v3, LP1/c;

    invoke-direct {v3}, LP1/c;-><init>()V

    sput-object v3, LP1/d;->d:Lv1/a$a;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "profile"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, LP1/d;->e:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "email"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, LP1/d;->f:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lv1/a;

    const-string v5, "SignIn.API"

    invoke-direct {v4, v5, v2, v0}, Lv1/a;-><init>(Ljava/lang/String;Lv1/a$a;Lv1/a$g;)V

    sput-object v4, LP1/d;->g:Lv1/a;

    new-instance v0, Lv1/a;

    const-string v2, "SignIn.INTERNAL_API"

    invoke-direct {v0, v2, v3, v1}, Lv1/a;-><init>(Ljava/lang/String;Lv1/a$a;Lv1/a$g;)V

    sput-object v0, LP1/d;->h:Lv1/a;

    return-void
.end method
